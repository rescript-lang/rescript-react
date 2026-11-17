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
  external click: WebAPI.DOMTree.element => unit = "click"

  @module("react-dom/test-utils") @scope("Simulate")
  external clickWithEvent: (WebAPI.DOMTree.element, 'event) => unit = "click"

  @module("react-dom/test-utils") @scope("Simulate")
  external change: WebAPI.DOMTree.element => unit = "change"

  @module("react-dom/test-utils") @scope("Simulate")
  external blur: WebAPI.DOMTree.element => unit = "blur"

  @module("react-dom/test-utils") @scope("Simulate")
  external changeWithEvent: (WebAPI.DOMTree.element, 'event) => unit = "change"

  let changeWithValue: (WebAPI.DOMTree.element, string) => unit
  let changeWithChecked: (WebAPI.DOMTree.element, bool) => unit

  @module("react-dom/test-utils") @scope("Simulate")
  external canPlay: WebAPI.DOMTree.element => unit = "canPlay"

  @module("react-dom/test-utils") @scope("Simulate")
  external timeUpdate: WebAPI.DOMTree.element => unit = "timeUpdate"

  @module("react-dom/test-utils") @scope("Simulate")
  external ended: WebAPI.DOMTree.element => unit = "ended"

  @module("react-dom/test-utils") @scope("Simulate")
  external focus: WebAPI.DOMTree.element => unit = "focus"
}

module DOM: {
  @return(nullable) @get
  external value: WebAPI.DOMTree.element => option<string> = "value"

  let findBySelector: (WebAPI.DOMTree.element, string) => option<WebAPI.DOMTree.element>
  let findByAllSelector: (WebAPI.DOMTree.element, string) => array<WebAPI.DOMTree.element>

  let findBySelectorAndTextContent: (
    WebAPI.DOMTree.element,
    string,
    string,
  ) => option<WebAPI.DOMTree.element>

  let findBySelectorAndPartialTextContent: (
    WebAPI.DOMTree.element,
    string,
    string,
  ) => option<WebAPI.DOMTree.element>
}

let prepareContainer: (ref<option<WebAPI.DOMTree.element>>, unit) => unit
let cleanupContainer: (ref<option<WebAPI.DOMTree.element>>, unit) => unit
let getContainer: ref<option<WebAPI.DOMTree.element>> => WebAPI.DOMTree.element
