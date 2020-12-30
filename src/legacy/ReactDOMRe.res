/**
This module is kept for ReScript react-jsx <= v3 compatibility
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

/* Only wanna expose createElementVariadic here. Don't wanna write an interface file */
include (
  /* Use varargs to avoid the ReactJS warning for duplicate keys in children */
  {
    @bs.val @bs.module("react")
    external createElementInternalHack: 'a = "createElement"

    @bs.send
    external apply: ('theFunction, 'theContext, 'arguments) => 'returnTypeOfTheFunction = "apply"

    let createElementVariadic = (domClassName, ~props=?, children) => {
      let variadicArguments =
        [Obj.magic(domClassName), Obj.magic(props)] |> Js.Array.concat(children)
      createElementInternalHack->apply(Js.Nullable.null, variadicArguments)
    }
  }: {
    let createElementVariadic: (string, ~props: props=?, array<React.element>) => React.element
  }
)
