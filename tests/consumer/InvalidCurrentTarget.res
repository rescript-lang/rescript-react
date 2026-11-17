// React clears this after dispatch; consumers must handle None.
let withoutNullCheck = (event: ReactEvent.Mouse.t): WebAPI.DOM.eventTarget =>
  event->ReactEvent.Mouse.currentTarget
