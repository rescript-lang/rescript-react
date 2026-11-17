let toPublic = (element: WebAPI.DOMTree.element): WebAPI.Element.t => element
let fromPublic = (element: WebAPI.Element.t): WebAPI.DOMTree.element => element

let createRootFromElement = (parent: WebAPI.Element.t) =>
  parent
  ->WebAPI.Element.querySelector("#root")
  ->Null.toOption
  ->Option.map(ReactDOM.Client.createRoot)

let capturePointer = (element: WebAPI.DOMTree.element, event: ReactEvent.Pointer.t) =>
  element->WebAPI.Element.setPointerCapture(event->ReactEvent.Pointer.pointerId)

let cancelNativeEvent = (event: ReactEvent.Mouse.t) =>
  event->ReactEvent.Mouse.nativeEvent->WebAPI.Event.preventDefault
