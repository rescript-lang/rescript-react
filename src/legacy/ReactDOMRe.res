/**
This module is kept for ReScript react-jsx v3 compatibility
We removed all functionality that is not needed for JSX usage
**/

include ReactDOM.Props

@variadic @module("react")
external createDOMElementVariadic: (
  string,
  ~props: domProps=?,
  array<React.element>,
) => React.element = "createElement"

@variadic @module("react")
external createElement: (string, ~props: props=?, array<React.element>) => React.element =
  "createElement"
