open WebAPI

@scope("globalThis")
external window: option<Window.t> = "window"

@scope("globalThis")
external history: option<HistoryTypes.history> = "history"

@get external location: Window.t => Location.t = "location"

/* actually the cb is DOM.event => unit, but let's restrict the access for now */
@send
external addEventListener: (Window.t, string, unit => unit) => unit = "addEventListener"

@send
external removeEventListener: (Window.t, string, unit => unit) => unit = "removeEventListener"

@send
external dispatchEvent: (Window.t, DOM.event) => unit = "dispatchEvent"

@get external pathname: Location.t => string = "pathname"

@get external hash: Location.t => string = "hash"

@get external search: Location.t => string = "search"

@send
external pushState: (HistoryTypes.history, @as(json`null`) _, @as("") _, ~href: string) => unit =
  "pushState"

@send
external replaceState: (HistoryTypes.history, @as(json`null`) _, @as("") _, ~href: string) => unit =
  "replaceState"

type makeEventOptions = {
  bubbles?: bool,
  cancelable?: bool,
  composed?: bool,
}
@new external makeEvent: (string, ~options: makeEventOptions=?) => DOM.event = "Event"

/* This is copied from array.ml. We want to cut dependencies for rescript-react so
 that it's friendlier to use in size-constrained codebases */
let arrayToList = a => {
  let rec tolist = (i, res) =>
    if i < 0 {
      res
    } else {
      tolist(i - 1, list{a->Array.getUnsafe(i), ...res})
    }
  tolist(a->Array.length - 1, list{})
}
/* if we ever roll our own parser in the future, make sure you test all url combinations
   e.g. foo.com/?#bar
 */
/* sigh URLSearchParams doesn't work on IE11, edge16, etc. */
/* actually you know what, not gonna provide search for now. It's a mess.
 We'll let users roll their own solution/data structure for now */
let pathParse = str =>
  switch str {
  | ""
  | "/" =>
    list{}
  | raw =>
    /* remove the preceeding /, which every pathname seems to have */
    let raw = raw->String.slice(~start=1)
    /* remove the trailing /, which some pathnames might have. Ugh */
    let raw = switch raw->String.getUnsafe(raw->String.length - 1) {
    | "/" => raw->String.slice(~start=0, ~end=-1)
    | _ => raw
    }
    /* remove search portion if present in string */
    let raw = switch raw->String.splitAtMost("?", ~limit=2) {
    | [path, _] => path
    | _ => raw
    }

    raw->String.split("/")->Array.filter(item => item->String.length != 0)->arrayToList
  }
let path = (~serverUrlString=?, ()) =>
  switch (serverUrlString, window) {
  | (None, None) => list{}
  | (Some(serverUrlString), _) => pathParse(serverUrlString)
  | (_, Some(window: Window.t)) => pathParse(window->location->pathname)
  }
let hash = () =>
  switch window {
  | None => ""
  | Some(window: Window.t) =>
    switch window->location->hash {
    | ""
    | "#" => ""
    | raw =>
      /* remove the preceeding #, which every hash seems to have.
       Why is this even included in location.hash?? */
      raw->String.slice(~start=1)
    }
  }
let searchParse = str =>
  switch str {
  | ""
  | "?" => ""
  | raw =>
    switch raw->String.splitAtMost("?", ~limit=2) {
    | [_, search] => search
    | _ => ""
    }
  }

let search = (~serverUrlString=?, ()) =>
  switch (serverUrlString, window) {
  | (None, None) => ""
  | (Some(serverUrlString), _) => searchParse(serverUrlString)
  | (_, Some(window: Window.t)) => searchParse(window->location->search)
  }

let push = path =>
  switch (history, window) {
  | (None, _)
  | (_, None) => ()
  | (Some(history: HistoryTypes.history), Some(window: Window.t)) =>
    pushState(history, ~href=path)
    dispatchEvent(window, makeEvent("popstate", ~options={bubbles: true, cancelable: true}))
  }

let replace = path =>
  switch (history, window) {
  | (None, _)
  | (_, None) => ()
  | (Some(history: HistoryTypes.history), Some(window: Window.t)) =>
    replaceState(history, ~href=path)
    dispatchEvent(window, makeEvent("popstate", ~options={bubbles: true, cancelable: true}))
  }

type url = {
  path: list<string>,
  hash: string,
  search: string,
}

let urlNotEqual = (a, b) => {
  let rec listNotEqual = (aList, bList) =>
    switch (aList, bList) {
    | (list{}, list{}) => false
    | (list{}, list{_, ..._})
    | (list{_, ..._}, list{}) => true
    | (list{aHead, ...aRest}, list{bHead, ...bRest}) =>
      if aHead !== bHead {
        true
      } else {
        listNotEqual(aRest, bRest)
      }
    }
  a.hash !== b.hash || (a.search !== b.search || listNotEqual(a.path, b.path))
}

type watcherID = unit => unit

let url = (~serverUrlString=?, ()) => {
  path: path(~serverUrlString?, ()),
  hash: hash(),
  search: search(~serverUrlString?, ()),
}

/* alias exposed publicly */
let dangerouslyGetInitialUrl = url

let watchUrl = callback =>
  switch window {
  | None => () => ()
  | Some(window: Window.t) =>
    let watcherID = () => callback(url())
    addEventListener(window, "popstate", watcherID)
    watcherID
  }

let unwatchUrl = watcherID =>
  switch window {
  | None => ()
  | Some(window: Window.t) => removeEventListener(window, "popstate", watcherID)
  }

let useUrl = (~serverUrl=?, ()) => {
  let (url, setUrl) = React.useState(() =>
    switch serverUrl {
    | Some(url) => url
    | None => dangerouslyGetInitialUrl()
    }
  )

  React.useEffect(() => {
    let watcherId = watchUrl(url => setUrl(_ => url))

    // check for updates that may have occured between the initial state and
    // the subscribe above
    let newUrl = dangerouslyGetInitialUrl()
    if urlNotEqual(newUrl, url) {
      setUrl(_ => newUrl)
    }

    Some(() => unwatchUrl(watcherId))
  }, [])

  url
}
