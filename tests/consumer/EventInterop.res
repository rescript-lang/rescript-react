// Every family must expose the same precise shared event contract.
module CheckEvent = (
  Event: {
    type t
    let target: t => WebAPI.DOM.eventTarget
    let currentTarget: t => option<WebAPI.DOM.eventTarget>
    let nativeEvent: t => WebAPI.DOM.event
  },
) => {
  let nativeType = event => {
    let native: WebAPI.DOM.event = event->Event.nativeEvent
    native.type_
  }
}

module Clipboard = CheckEvent(ReactEvent.Clipboard)
module Composition = CheckEvent(ReactEvent.Composition)
module Keyboard = CheckEvent(ReactEvent.Keyboard)
module Focus = CheckEvent(ReactEvent.Focus)
module Form = CheckEvent(ReactEvent.Form)
module Mouse = CheckEvent(ReactEvent.Mouse)
module Pointer = CheckEvent(ReactEvent.Pointer)
module Selection = CheckEvent(ReactEvent.Selection)
module Touch = CheckEvent(ReactEvent.Touch)
module UI = CheckEvent(ReactEvent.UI)
module Wheel = CheckEvent(ReactEvent.Wheel)
module Media = CheckEvent(ReactEvent.Media)
module Image = CheckEvent(ReactEvent.Image)
module Animation = CheckEvent(ReactEvent.Animation)
module Transition = CheckEvent(ReactEvent.Transition)

let target = (event: ReactEvent.Mouse.t): WebAPI.DOM.eventTarget => event->ReactEvent.Mouse.target

let currentTarget = (event: ReactEvent.Mouse.t): option<WebAPI.DOM.eventTarget> =>
  event->ReactEvent.Mouse.currentTarget

let nativeEvent = (event: ReactEvent.Mouse.t): WebAPI.DOM.event =>
  event->ReactEvent.Mouse.nativeEvent

let syntheticTarget = (event: ReactEvent.Mouse.t): WebAPI.DOM.eventTarget =>
  event->ReactEvent.Synthetic.target

let syntheticCurrentTarget = (event: ReactEvent.Mouse.t): option<WebAPI.DOM.eventTarget> =>
  event->ReactEvent.Synthetic.currentTarget

let syntheticNativeEvent = (event: ReactEvent.Mouse.t): WebAPI.DOM.event =>
  event->ReactEvent.Synthetic.nativeEvent

let focusRelatedTarget = (event: ReactEvent.Focus.t): option<WebAPI.DOM.eventTarget> =>
  event->ReactEvent.Focus.relatedTarget

let mouseRelatedTarget = (event: ReactEvent.Mouse.t): option<WebAPI.DOM.eventTarget> =>
  event->ReactEvent.Mouse.relatedTarget

let pointerRelatedTarget = (event: ReactEvent.Pointer.t): option<WebAPI.DOM.eventTarget> =>
  event->ReactEvent.Pointer.relatedTarget

let uiView = (event: ReactEvent.UI.t): option<WebAPI.DOM.window> => event->ReactEvent.UI.view

let pointerView = (event: ReactEvent.Pointer.t): option<WebAPI.DOM.window> =>
  event->ReactEvent.Pointer.view

let toFile = (file: ReactDOM.FormData.file): WebAPI.DOM.file => file
let fromFile = (file: WebAPI.DOM.file): ReactDOM.FormData.file => file
let fileName = (file: ReactDOM.FormData.file) => file.name
let getFile = ReactDOM.FormData.getFile
let getAll = ReactDOM.FormData.getAll
