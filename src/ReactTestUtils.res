type undefined = nullable<unit>

let undefined: undefined = Nullable.undefined

@module("react-dom/test-utils")
external reactAct: (unit => undefined) => unit = "act"

let act: (unit => unit) => unit = func => {
  let reactFunc = () => {
    func()
    undefined
  }
  reactAct(reactFunc)
}

@module("react-dom/test-utils")
external reactActAsync: (unit => promise<'a>) => promise<unit> = "act"

let actAsync = func => {
  let reactFunc = () => func()
  reactActAsync(reactFunc)
}

@module("react-dom/test-utils")
external isElement: 'element => bool = "isElement"

@module("react-dom/test-utils")
external isElementOfType: ('element, React.component<'props>) => bool = "isElementOfType"

@module("react-dom/test-utils")
external isDOMComponent: 'element => bool = "isDOMComponent"

@module("react-dom/test-utils")
external isCompositeComponent: 'element => bool = "isCompositeComponent"

@module("react-dom/test-utils")
external isCompositeComponentWithType: ('element, React.component<'props>) => bool =
  "isCompositeComponentWithType"

module Simulate = {
  @module("react-dom/test-utils") @scope("Simulate")
  external click: WebAPI.Element.t => unit = "click"
  @module("react-dom/test-utils") @scope("Simulate")
  external clickWithEvent: (WebAPI.Element.t, 'event) => unit = "click"
  @module("react-dom/test-utils") @scope("Simulate")
  external change: WebAPI.Element.t => unit = "change"
  @module("react-dom/test-utils") @scope("Simulate")
  external blur: WebAPI.Element.t => unit = "blur"
  @module("react-dom/test-utils") @scope("Simulate")
  external changeWithEvent: (WebAPI.Element.t, 'event) => unit = "change"
  let changeWithValue = (element, value) => {
    let event = {
      "target": {
        "value": value,
      },
    }
    changeWithEvent(element, event)
  }
  let changeWithChecked = (element, value) => {
    let event = {
      "target": {
        "checked": value,
      },
    }
    changeWithEvent(element, event)
  }
  @module("react-dom/test-utils") @scope("Simulate")
  external canPlay: WebAPI.Element.t => unit = "canPlay"
  @module("react-dom/test-utils") @scope("Simulate")
  external timeUpdate: WebAPI.Element.t => unit = "timeUpdate"
  @module("react-dom/test-utils") @scope("Simulate")
  external ended: WebAPI.Element.t => unit = "ended"
  @module("react-dom/test-utils") @scope("Simulate")
  external focus: WebAPI.Element.t => unit = "focus"
}

@val external document: WebAPI.DOM.document = "document"

@send
external querySelector: (WebAPI.Element.t, string) => option<WebAPI.Element.t> = "querySelector"

@send
external querySelectorAll: (WebAPI.Element.t, string) => Array.arrayLike<WebAPI.Element.t> =
  "querySelectorAll"

@get external textContent: WebAPI.Element.t => string = "textContent"
@get external body: WebAPI.DOM.document => option<WebAPI.Element.t> = "body"
@send
external createElement: (WebAPI.DOM.document, string) => WebAPI.Element.t = "createElement"
@send external remove: WebAPI.Element.t => unit = "remove"
@send
external appendChild: (WebAPI.Element.t, WebAPI.Element.t) => WebAPI.Element.t = "appendChild"

let querySelectorAll = (element, string) => Array.fromArrayLike(querySelectorAll(element, string))

module DOM = {
  @return(nullable) @get
  external value: WebAPI.Element.t => option<string> = "value"

  let findBySelector = (element, selector) => querySelector(element, selector)

  let findByAllSelector = (element, selector) => querySelectorAll(element, selector)

  let findBySelectorAndTextContent = (element, selector, content) =>
    querySelectorAll(element, selector)->Array.find(node => node->textContent === content)

  let findBySelectorAndPartialTextContent = (element, selector, content) =>
    querySelectorAll(element, selector)->Array.find(node =>
      node->textContent->String.includes(content)
    )
}

let prepareContainer = (container: ref<option<WebAPI.Element.t>>, ()) => {
  let containerElement = document->createElement("div")
  switch document->body {
  | Some(body) => body->appendChild(containerElement)->ignore
  | None => ()
  }
  container := Some(containerElement)
}

let cleanupContainer = (container: ref<option<WebAPI.Element.t>>, ()) => {
  switch container.contents {
  | Some(contents) => remove(contents)
  | None => ()
  }
  container := None
}

let getContainer = container =>
  switch container.contents {
  | Some(contents) => contents
  | None => throw(Not_found)
  }
