// EventTarget is not necessarily an Element (it may be a Window or Document).
let asElement = (event: ReactEvent.Mouse.t): WebAPI.DOMTree.element =>
  event->ReactEvent.Mouse.target
