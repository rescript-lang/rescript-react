/***
ReactV3 module is for the backward compatibility.

`open ReactV3` enables using the rescript-react for V3.

```rescript
module C = {
  @@jsxConfig({version: 3})
  open ReactV3

  @react.component
  let make = ...
}
```
or in project level,
- open ReactV3 globally
- install the compiler>=10.1
- install the rescript-react>=0.11.0
*/

module React = {
  include React_V3
}

module ReactDOM = {
  include ReactDOM_V3
}

module ReactDOMStyle = {
  include ReactDOMStyle_V3
}

module ReactEvent = {
  include ReactEvent_V3
}
