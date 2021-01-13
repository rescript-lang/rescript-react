@@warning("-27")

module Test = {
  @bs.obj external makeProps: (~children: 'children, unit) => {"children": 'children} = ""
  let make =
    (@warning("-16") ~children) => {
      children
    }
  let make = {
    let \"Foo$Test" = (\"Props": {"children": 'children}) => make(~children=\"Props"["children"])
    \"Foo$Test"
  }
}

module App = {
  @bs.obj external makeProps: unit => {.} = ""

  let make = () => {
    (@warning("-3") React.jsx)(
      Test.make,
      {
        Test.makeProps(~children={React.string("help")}, ())
      },
    )
  }
  let make = {
    let \"Foo$App" = (\"Props": {.}) => make()
    \"Foo$App"
  }
}
