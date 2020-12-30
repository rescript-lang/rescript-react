/**
This module is kept for ReScript react-jsx v3 compatibility
We removed all functionality that is not needed for JSX usage
**/

type props = ReactDOM.Props.props
type domProps = ReactDOM.Props.domProps

let props = ReactDOM.Props.props
let domProps = ReactDOM.Props.domProps

@bs.splice @bs.module("react")
external createDOMElementVariadic: (
  string,
  ~props: domProps=?,
  array<React.element>,
) => React.element = "createElement"

@bs.splice @bs.val @bs.module("react")
external createElement: (string, ~props: props=?, array<React.element>) => React.element =
  "createElement"
