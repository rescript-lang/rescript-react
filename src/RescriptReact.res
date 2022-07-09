@@jsxConfig({version: 4, mode: "automatic"})

module Context = {
  type t<'context>

  type props<'context> = {
    value: 'context,
    children: React.element,
  }

  @get
  external provider: t<'context> => React.component<props<'context>> = "Provider"
}

module Fragment = {
  @react.component @module("react")
  external make: (~children: React.element) => React.element = "Fragment"
}

module StrictMode = {
  @react.component @module("react")
  external make: (~children: React.element) => React.element = "StrictMode"
}

module Suspense = {
  @react.component @module("react")
  external make: (~children: React.element=?, ~fallback: React.element=?) => React.element =
    "Suspense"
}

module Experimental = {
  module SuspenseList = {
    type revealOrder
    type tail

    @react.component @module("react")
    external make: (
      ~children: React.element=?,
      ~revealOrder: revealOrder=?,
      ~tail: tail=?,
    ) => React.element = "SuspenseList"
  }
}
