let act: (unit => unit) => unit

let actAsync: (unit => Js.Promise.t<'a>) => Js.Promise.t<unit>

@module("react-dom/test-utils.js")
external isElement: 'element => bool = "isElement"

@module("react-dom/test-utils.js")
external isElementOfType: ('element, React.component<'props>) => bool = "isElementOfType"

@module("react-dom/test-utils.js")
external isDOMComponent: 'element => bool = "isDOMComponent"

@module("react-dom/test-utils.js")
external isCompositeComponent: 'element => bool = "isCompositeComponent"

@module("react-dom/test-utils.js")
external isCompositeComponentWithType: ('element, React.component<'props>) => bool =
  "isCompositeComponentWithType"

module Simulate: {
  @module("react-dom/test-utils.js") @scope("Simulate")
  external click: Dom.element => unit = "click"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external clickWithEvent: (Dom.element, 'event) => unit = "click"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external change: Dom.element => unit = "change"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external blur: Dom.element => unit = "blur"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external changeWithEvent: (Dom.element, 'event) => unit = "change"
  let changeWithValue: (Dom.element, string) => unit
  let changeWithChecked: (Dom.element, bool) => unit
  @module("react-dom/test-utils.js") @scope("Simulate")
  external canPlay: Dom.element => unit = "canPlay"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external timeUpdate: Dom.element => unit = "timeUpdate"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external ended: Dom.element => unit = "ended"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external focus: Dom.element => unit = "focus"
}

module DOM: {
  @return(nullable) @get
  external value: Dom.element => option<string> = "value"

  let findBySelector: (Dom.element, string) => option<Dom.element>
  let findByAllSelector: (Dom.element, string) => array<Dom.element>
  let findBySelectorAndTextContent: (Dom.element, string, string) => option<Dom.element>
  let findBySelectorAndPartialTextContent: (Dom.element, string, string) => option<Dom.element>
}

let prepareContainer: (ref<option<Dom.element>>, unit) => unit
let cleanupContainer: (ref<option<Dom.element>>, unit) => unit
let getContainer: ref<option<Dom.element>> => Dom.element
