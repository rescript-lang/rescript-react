// Only compiled by the broader consumer that explicitly selects WebAPI.Window.
let createRootFromDocument = (document: WebAPI.DOM.document) =>
  document
  ->WebAPI.Document.querySelector("#root")
  ->Null.toOption
  ->Option.map(ReactDOM.Client.createRoot)

let eventWindow = (event: ReactEvent.UI.t): option<WebAPI.Window.t> => event->ReactEvent.UI.view

let history = (window: WebAPI.DOM.window): WebAPI.History.Types.history =>
  window->WebAPI.Window.history

let location = (window: WebAPI.DOM.window): WebAPI.Location.t => window->WebAPI.Window.location
