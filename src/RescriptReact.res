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

module ErrorBoundary = {
  @ocaml.doc("
 * Important note on this module:
 * As soon as React provides a mechanism for error-catching using functional component,
 * this is likely to be deprecated and/or move to user space.
 ")
  type reactComponentClass

  @module("react") external component: reactComponentClass = "Component"

  type info = {componentStack: string}

  type params<'error> = {
    error: 'error,
    info: info,
  }

  let getErrorBoundary: reactComponentClass => React.element = %raw(`
  function (Component) {
    function ErrorBoundary(props) {
      Component.call(this);
      this.state = {error: undefined};
    };
    ErrorBoundary.prototype = Object.create(Component.prototype);
    ErrorBoundary.prototype.componentDidCatch = function(error, info) {
      this.setState({error: {error: error, info: info}})
    };
    ErrorBoundary.prototype.render = function() {
      return this.state.error != undefined ? this.props.fallback(this.state.error) : this.props.children
    }
    return ErrorBoundary;
  }
`)

  @react.component
  let make = (~children as _: React.element, ~fallback as _: params<'error> => React.element) =>
    getErrorBoundary(component)
}
