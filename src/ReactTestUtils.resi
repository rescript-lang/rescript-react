let act: (unit => unit) => unit

let actAsync: (unit => promise<'a>) => promise<unit>

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

module Simulate: {
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
  let changeWithValue: (WebAPI.Element.t, string) => unit
  let changeWithChecked: (WebAPI.Element.t, bool) => unit
  @module("react-dom/test-utils") @scope("Simulate")
  external canPlay: WebAPI.Element.t => unit = "canPlay"
  @module("react-dom/test-utils") @scope("Simulate")
  external timeUpdate: WebAPI.Element.t => unit = "timeUpdate"
  @module("react-dom/test-utils") @scope("Simulate")
  external ended: WebAPI.Element.t => unit = "ended"
  @module("react-dom/test-utils") @scope("Simulate")
  external focus: WebAPI.Element.t => unit = "focus"
}

module DOM: {
  @return(nullable) @get
  external value: WebAPI.Element.t => option<string> = "value"

  let findBySelector: (WebAPI.Element.t, string) => option<WebAPI.Element.t>
  let findByAllSelector: (WebAPI.Element.t, string) => array<WebAPI.Element.t>
  let findBySelectorAndTextContent: (WebAPI.Element.t, string, string) => option<WebAPI.Element.t>
  let findBySelectorAndPartialTextContent: (
    WebAPI.Element.t,
    string,
    string,
  ) => option<WebAPI.Element.t>
}

let prepareContainer: (ref<option<WebAPI.Element.t>>, unit) => unit
let cleanupContainer: (ref<option<WebAPI.Element.t>>, unit) => unit
let getContainer: ref<option<WebAPI.Element.t>> => WebAPI.Element.t
