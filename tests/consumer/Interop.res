// Selective consumer: rich types and CSS declarations, without DOMNodes or Window operations.
let createRootFromElement = (element: WebAPI.DOMTree.element) => ReactDOM.Client.createRoot(element)
let pointerId = (event: ReactEvent.Pointer.t): int => ReactEvent.Pointer.pointerId(event)

let eventWindow = (event: ReactEvent.UI.t): option<WebAPI.DOM.window> => event->ReactEvent.UI.view

let elementWithRef = (ref: ReactDOM.Ref.currentDomRef) => <div ref={ReactDOM.Ref.domRef(ref)} />

let elementWithCallbackRef = (ref: ReactDOM.Ref.callbackDomRef) =>
  <div ref={ReactDOM.Ref.callbackDomRef(ref)} />

let findChild = (element: WebAPI.DOMTree.element) =>
  ReactTestUtils.DOM.findBySelector(element, ".child")

let container = (element: WebAPI.DOMTree.element) => {
  let container = ref(Some(element))
  ReactTestUtils.cleanupContainer(container, ())
}

let historyState = (history: WebAPI.History.Types.history) => history.state
let locationPath = (location: WebAPI.Location.t) => location.pathname
