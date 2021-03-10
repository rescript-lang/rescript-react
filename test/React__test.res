open Test
open ReactTestUtils
open Belt

@val external document: {..} = "document"
@send external remove: Dom.element => unit = "remove"

let createContainer = () => {
  let containerElement: Dom.element = document["createElement"]("div")
  let _ = document["body"]["appendChild"](containerElement)
  containerElement
}

let cleanupContainer = container => {
  ReactDOM.unmountComponentAtNode(container)
  remove(container)
}

let testWithReact = testWith(~setup=createContainer, ~teardown=cleanupContainer)

@send
external querySelectorAll: (Dom.element, string) => Js.Array.array_like<Dom.element> =
  "querySelectorAll"

@returns(nullable) @send
external querySelector: (Dom.element, string) => option<Dom.element> = "querySelector"

@get external textContent: Dom.element => string = "textContent"

let querySelectorAll = (element, string) => Js.Array.from(querySelectorAll(element, string))

let containsElementWithText = (~message=?, element: Dom.element, selector: string, text: string) =>
  assertion(
    ~message?,
    ~operator="containsElementWithText",
    (a, b) => a === b,
    element->querySelectorAll(selector)->Js.Array2.some(node => node->textContent === text),
    true,
  )

let doesNotContainElementWithText = (
  ~message=?,
  element: Dom.element,
  selector: string,
  text: string,
) =>
  assertion(
    ~message?,
    ~operator="containsElementWithText",
    (a, b) => a === b,
    element->querySelectorAll(selector)->Js.Array2.some(node => node->textContent === text),
    false,
  )

let containsElementWithPartialText = (
  ~message=?,
  element: Dom.element,
  selector: string,
  text: string,
) =>
  assertion(
    ~message?,
    ~operator="containsElementWithPartialText",
    (a, b) => a === b,
    element
    ->querySelectorAll(selector)
    ->Js.Array2.some(node => node->textContent->Js.String2.includes(text)),
    true,
  )

let intArrayEquals = (~message=?, a: array<int>, b: array<int>) =>
  assertion(
    ~message?,
    ~operator="intArrayEquals",
    (a, b) => Belt.Array.eq(a, b, (a, b) => a === b),
    a,
    b,
  )

let stringEquals = (~message=?, a: string, b: string) =>
  assertion(~message?, ~operator="stringEquals", (a, b) => a === b, a, b)

let stringContains = (~message=?, a: string, b: string) =>
  assertion(~message?, ~operator="stringContains", (a, b) => a->Js.String2.includes(b), a, b)

let intOptionEquals = (~message=?, a: option<int>, b: option<int>) =>
  assertion(
    ~message?,
    ~operator="intOptionEquals",
    (a, b) => Belt.Option.eq(a, b, (a, b) => a === b),
    a,
    b,
  )

module Console = {
  type fn
  let disableError: unit => fn = %raw(`
  function() {
    var fn = console.error
    console.error = () => {}
    return fn
  }
  `)

  let restoreError: fn => unit = %raw(`
  function(fn){
    console.error = fn
  }
  `)
}

module DummyStatefulComponent = {
  @react.component
  let make = (~initialValue=0, ()) => {
    let (value, setValue) = React.useState(() => initialValue)

    <button onClick={_ => setValue(value => value + 1)}> {value->React.int} </button>
  }
}

module DummyReducerComponent = {
  type action =
    | Increment
    | Decrement
  @react.component
  let make = (~initialValue=0, ()) => {
    let (state, send) = React.useReducer((state, action) =>
      switch action {
      | Increment => state + 1
      | Decrement => state - 1
      }
    , initialValue)

    <>
      <div className="value"> {state->React.int} </div>
      <button onClick={_ => send(Increment)} className="increment">
        {"Increment"->React.string}
      </button>
      <button onClick={_ => send(Decrement)} className="decrement">
        {"Decrement"->React.string}
      </button>
    </>
  }
}

module DummyReducerWithMapStateComponent = {
  type action =
    | Increment
    | Decrement
  @react.component
  let make = (~initialValue=0, ()) => {
    let (state, send) = React.useReducerWithMapState(
      (state, action) =>
        switch action {
        | Increment => state + 1
        | Decrement => state - 1
        },
      initialValue,
      initialValue => initialValue + 1,
    )

    <>
      <div className="value"> {state->React.int} </div>
      <button onClick={_ => send(Increment)} className="increment">
        {"Increment"->React.string}
      </button>
      <button onClick={_ => send(Decrement)} className="decrement">
        {"Decrement"->React.string}
      </button>
    </>
  }
}

module DummyComponentWithEffect = {
  @react.component
  let make = (~value=0, ~callback, ()) => {
    React.useEffect1(() => {
      callback(value)
      None
    }, [value])

    <div />
  }
}

module DummyComponentWithLayoutEffect = {
  @react.component
  let make = (~value=0, ~callback, ()) => {
    React.useLayoutEffect1(() => {
      callback(value)
      None
    }, [value])

    <div />
  }
}

module DummyComponentWithRefAndEffect = {
  @react.component
  let make = (~callback, ()) => {
    let myRef = React.useRef(1)
    React.useEffect0(() => {
      myRef.current = myRef.current + 1
      callback(myRef)
      None
    })
    <div />
  }
}

module DummyComponentThatMapsChildren = {
  @react.component
  let make = (~children, ()) =>
    <div>
      {children->React.Children.mapWithIndex((element, index) =>
        React.cloneElement(element, {"key": j`$index`, "data-index": index})
      )}
    </div>
}

module DummyContext = {
  let context = React.createContext(0)
  module Provider = {
    include React.Context
    let make = context->React.Context.provider
  }

  module Consumer = {
    @react.component
    let make = () => {
      let value = React.useContext(context)
      <div> {value->React.int} </div>
    }
  }
}

module ComponentThatThrows = {
  exception TestError
  @react.component
  let make = (~shouldThrow=true, ~value) => {
    if shouldThrow {
      raise(TestError)
    }
    <div> {value->React.int} </div>
  }
}

testWithReact("React can render DOM elements", container => {
  act(() => ReactDOM.render(<div> {"Hello world!"->React.string} </div>, container))
  containsElementWithText(container, "div", "Hello world!")
})

testWithReact("React can render null elements", container => {
  act(() => ReactDOM.render(<div> React.null </div>, container))
  containsElementWithText(container, "div", "")
})

testWithReact("React can render string elements", container => {
  act(() => ReactDOM.render(<div> {"Hello"->React.string} </div>, container))
  containsElementWithText(container, "div", "Hello")
})

testWithReact("React can render int elements", container => {
  act(() => ReactDOM.render(<div> {12345->React.int} </div>, container))
  containsElementWithText(container, "div", "12345")
})

testWithReact("React can render float elements", container => {
  act(() => ReactDOM.render(<div> {12.345->React.float} </div>, container))
  containsElementWithText(container, "div", "12.345")
})

testWithReact("React can render array of elements", container => {
  let array = [1, 2, 3]->Array.map(item => <div key=j`$item`> {item->React.int} </div>)

  act(() => ReactDOM.render(<div> {array->React.array} </div>, container))

  containsElementWithText(container, "div", "1")
  containsElementWithText(container, "div", "2")
  containsElementWithText(container, "div", "3")
})

testWithReact("React can clone an element", container => {
  act(() =>
    ReactDOM.render(
      React.cloneElement(<div> {"Hello"->React.string} </div>, {"data-name": "World"}),
      container,
    )
  )

  containsElementWithText(container, "div[data-name='World']", "Hello")
})

testWithReact("React can render react components", container => {
  act(() => ReactDOM.render(<DummyStatefulComponent />, container))
  containsElementWithText(container, "button", "0")

  let button = container->querySelector("button")

  act(() =>
    switch button {
    | Some(button) => Simulate.click(button)
    | None => ()
    }
  )

  doesNotContainElementWithText(container, "button", "0")
  containsElementWithText(container, "button", "1")
})

testWithReact("React can render react components with reducers", container => {
  act(() => ReactDOM.render(<DummyReducerComponent />, container))
  containsElementWithText(container, ".value", "0")

  let button = container->querySelector(".increment")

  act(() =>
    switch button {
    | Some(button) => Simulate.click(button)
    | None => ()
    }
  )

  doesNotContainElementWithText(container, ".value", "0")
  containsElementWithText(container, ".value", "1")

  let button = container->querySelector(".decrement")

  act(() =>
    switch button {
    | Some(button) => Simulate.click(button)
    | None => ()
    }
  )

  doesNotContainElementWithText(container, ".value", "1")
  containsElementWithText(container, ".value", "0")
})

testWithReact("React can render react components with reducers (map state)", container => {
  act(() => ReactDOM.render(<DummyReducerWithMapStateComponent />, container))
  containsElementWithText(container, ".value", "1")

  let button = container->querySelector(".increment")

  act(() =>
    switch button {
    | Some(button) => Simulate.click(button)
    | None => ()
    }
  )

  doesNotContainElementWithText(container, ".value", "1")
  containsElementWithText(container, ".value", "2")

  let button = container->querySelector(".decrement")

  act(() =>
    switch button {
    | Some(button) => Simulate.click(button)
    | None => ()
    }
  )

  doesNotContainElementWithText(container, ".value", "2")
  containsElementWithText(container, ".value", "1")
})

testWithReact("React can render react components with effects", container => {
  let calls = []
  let callback = value => calls->Js.Array2.push(value)->ignore

  act(() => ReactDOM.render(<DummyComponentWithEffect value=0 callback />, container))
  act(() => ReactDOM.render(<DummyComponentWithEffect value=1 callback />, container))
  act(() => ReactDOM.render(<DummyComponentWithEffect value=1 callback />, container))

  intArrayEquals(calls, [0, 1])
})

testWithReact("React can render react components with layout effects", container => {
  let calls = []
  let callback = value => calls->Js.Array2.push(value)->ignore

  act(() => ReactDOM.render(<DummyComponentWithLayoutEffect value=0 callback />, container))
  act(() => ReactDOM.render(<DummyComponentWithLayoutEffect value=1 callback />, container))
  act(() => ReactDOM.render(<DummyComponentWithLayoutEffect value=1 callback />, container))

  intArrayEquals(calls, [0, 1])
})

testWithReact("React can work with useRef", container => {
  let myRef = ref(None)
  let callback = reactRef => myRef := Some(reactRef)

  act(() => ReactDOM.render(<DummyComponentWithRefAndEffect callback />, container))

  intOptionEquals(myRef.contents->Option.map(item => item.current), Some(2))
})

testWithReact("Children", container => {
  act(() =>
    ReactDOM.render(
      <DummyComponentThatMapsChildren>
        <div> {1->React.int} </div> <div> {2->React.int} </div> <div> {3->React.int} </div>
      </DummyComponentThatMapsChildren>,
      container,
    )
  )

  containsElementWithText(container, "div[data-index='0']", "1")
  containsElementWithText(container, "div[data-index='1']", "2")
  containsElementWithText(container, "div[data-index='2']", "3")
})

testWithReact("Context", container => {
  act(() =>
    ReactDOM.render(
      <DummyContext.Provider value=10> <DummyContext.Consumer /> </DummyContext.Provider>,
      container,
    )
  )

  containsElementWithText(container, "div", "10")
})

testWithReact("Events", container => {
  let value = ref("")

  act(() =>
    ReactDOM.render(
      <input
        name="test-input" onChange={event => value := (event->ReactEvent.Form.target)["value"]}
      />,
      container,
    )
  )

  act(() => {
    switch container->querySelector("input[name='test-input']") {
    | Some(input) => input->Simulate.changeWithEvent({"target": {"value": "My value"}})
    | None => ()
    }
  })

  stringEquals(value.contents, "My value")
})

testWithReact("ErrorBoundary", container => {
  // We need to disable error temporarily due to React always
  // printing errors / warnings
  let consoleFn = Console.disableError()

  act(() =>
    ReactDOM.render(
      <RescriptReactErrorBoundary
        fallback={({error, info}) => {
          switch error {
          | ComponentThatThrows.TestError => ()
          | _ => Js.Exn.raiseError("TestError exn should have been captured by fallback")
          }
          Console.restoreError(consoleFn)
          stringContains(info.componentStack, "ComponentThatThrows")
          <strong> {"An error occured"->React.string} </strong>
        }}>
        <ComponentThatThrows value=1 />
      </RescriptReactErrorBoundary>,
      container,
    )
  )

  containsElementWithText(container, "strong", "An error occured")
})
