// A native event may have a null view or no view property at all.
let withoutNullCheck = (event: ReactEvent.UI.t): WebAPI.DOM.window => event->ReactEvent.UI.view
