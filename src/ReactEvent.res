type synthetic<'a> = JsxEvent.synthetic<'a>

module MakeEventWithType = (
  Type: {
    type t
  },
) => {
  open WebAPI

  @get external bubbles: Type.t => bool = "bubbles"
  @get external cancelable: Type.t => bool = "cancelable"
  @get
  external currentTarget: Type.t => DOMAPI.node = "currentTarget"
  @get external defaultPrevented: Type.t => bool = "defaultPrevented"
  @get external eventPhase: Type.t => int = "eventPhase"
  @get external isTrusted: Type.t => bool = "isTrusted"
  @get external nativeEvent: Type.t => EventAPI.event = "nativeEvent"
  @send external preventDefault: Type.t => unit = "preventDefault"
  @send
  external isDefaultPrevented: Type.t => bool = "isDefaultPrevented"
  @send external stopPropagation: Type.t => unit = "stopPropagation"
  @send
  external isPropagationStopped: Type.t => bool = "isPropagationStopped"
  @get external target: Type.t => DOMAPI.node = "target"
  @get external timeStamp: Type.t => float = "timeStamp"
  @get external type_: Type.t => string = "type"
  @send external persist: Type.t => unit = "persist"
}

open WebAPI

module Synthetic = {
  type tag = JsxEvent.Synthetic.tag
  type t = synthetic<tag>
  @get external bubbles: synthetic<'a> => bool = "bubbles"
  @get external cancelable: synthetic<'a> => bool = "cancelable"
  @get
  external currentTarget: synthetic<'a> => DOMAPI.node = "currentTarget"
  @get
  external defaultPrevented: synthetic<'a> => bool = "defaultPrevented"
  @get external eventPhase: synthetic<'a> => int = "eventPhase"
  @get external isTrusted: synthetic<'a> => bool = "isTrusted"
  @get
  external nativeEvent: synthetic<'a> => EventAPI.event = "nativeEvent"
  @send
  external preventDefault: synthetic<'a> => unit = "preventDefault"
  @send
  external isDefaultPrevented: synthetic<'a> => bool = "isDefaultPrevented"
  @send
  external stopPropagation: synthetic<'a> => unit = "stopPropagation"
  @send
  external isPropagationStopped: synthetic<'a> => bool = "isPropagationStopped"
  @get external target: synthetic<'a> => DOMAPI.node = "target"
  @get external timeStamp: synthetic<'a> => float = "timeStamp"
  @get external type_: synthetic<'a> => string = "type"
  @send external persist: synthetic<'a> => unit = "persist"
}

/* Cast any event type to the general synthetic type. This is safe, since synthetic is more general */
external toSyntheticEvent: synthetic<'a> => Synthetic.t = "%identity"

module Clipboard = {
  type tag = JsxEvent.Clipboard.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external clipboardData: t => WebAPI.UIEventsAPI.dataTransfer = "clipboardData"
}

module Composition = {
  type tag = JsxEvent.Composition.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external data: t => string = "data"
}

module Keyboard = {
  type tag = JsxEvent.Keyboard.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external altKey: t => bool = "altKey"
  @get external charCode: t => int = "charCode"
  @get external code: t => string = "code"
  @get external ctrlKey: t => bool = "ctrlKey"
  @send
  external getModifierState: (t, string) => bool = "getModifierState"
  @get external key: t => string = "key"
  @get external keyCode: t => int = "keyCode"
  @get external locale: t => string = "locale"
  @get external location: t => int = "location"
  @get external metaKey: t => bool = "metaKey"
  @get external repeat: t => bool = "repeat"
  @get external shiftKey: t => bool = "shiftKey"
  @get external which: t => int = "which"
}

module Focus = {
  type tag = JsxEvent.Focus.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @return(nullable)
  external relatedTarget: t => option<EventAPI.eventTarget> = "relatedTarget"
}

module Form = {
  type tag = JsxEvent.Form.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
}

module Mouse = {
  type tag = JsxEvent.Mouse.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external altKey: t => bool = "altKey"
  @get external button: t => int = "button"
  @get external buttons: t => int = "buttons"
  @get external clientX: t => int = "clientX"
  @get external clientY: t => int = "clientY"
  @get external ctrlKey: t => bool = "ctrlKey"
  @send
  external getModifierState: (t, string) => bool = "getModifierState"
  @get external metaKey: t => bool = "metaKey"
  @get external movementX: t => int = "movementX"
  @get external movementY: t => int = "movementY"
  @get external pageX: t => int = "pageX"
  @get external pageY: t => int = "pageY"
  @get @return(nullable)
  external relatedTarget: t => option<EventAPI.eventTarget> = "relatedTarget"
  @get external screenX: t => int = "screenX"
  @get external screenY: t => int = "screenY"
  @get external shiftKey: t => bool = "shiftKey"
}

module Pointer = {
  type tag = JsxEvent.Pointer.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })

  // UIEvent
  @get external detail: t => int = "detail"
  @get external view: t => DOMAPI.window = "view"

  // MouseEvent
  @get external screenX: t => int = "screenX"
  @get external screenY: t => int = "screenY"
  @get external clientX: t => int = "clientX"
  @get external clientY: t => int = "clientY"
  @get external pageX: t => int = "pageX"
  @get external pageY: t => int = "pageY"
  @get external movementX: t => int = "movementX"
  @get external movementY: t => int = "movementY"

  @get external ctrlKey: t => bool = "ctrlKey"
  @get external shiftKey: t => bool = "shiftKey"
  @get external altKey: t => bool = "altKey"
  @get external metaKey: t => bool = "metaKey"
  @send
  external getModifierState: (t, string) => bool = "getModifierState"

  @get external button: t => int = "button"
  @get external buttons: t => int = "buttons"

  @get @return(nullable)
  external relatedTarget: t => option<EventAPI.eventTarget> = "relatedTarget"

  // PointerEvent
  @get external pointerId: t => Dom.eventPointerId = "pointerId"
  @get external width: t => float = "width"
  @get external height: t => float = "height"
  @get external pressure: t => float = "pressure"
  @get external tangentialPressure: t => float = "tangentialPressure"
  @get external tiltX: t => int = "tiltX"
  @get external tiltY: t => int = "tiltY"
  @get external twist: t => int = "twist"
  @get external pointerType: t => string = "pointerType"
  @get external isPrimary: t => bool = "isPrimary"
}

module Selection = {
  type tag = JsxEvent.Selection.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
}

module Touch = {
  type tag = JsxEvent.Touch.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external altKey: t => bool = "altKey"
  @get external changedTouches: t => UIEventsAPI.touchList = "changedTouches"
  @get external ctrlKey: t => bool = "ctrlKey"
  @send
  external getModifierState: (t, string) => bool = "getModifierState"
  @get external metaKey: t => bool = "metaKey"
  @get external shiftKey: t => bool = "shiftKey"
  @get external targetTouches: t => UIEventsAPI.touchList = "targetTouches"
  @get external touches: t => UIEventsAPI.touchList = "touches"
}

module UI = {
  type tag = JsxEvent.UI.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external detail: t => int = "detail"
  @get external view: t => DOMAPI.window = "view"
}

module Wheel = {
  type tag = JsxEvent.Wheel.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external deltaMode: t => int = "deltaMode"
  @get external deltaX: t => float = "deltaX"
  @get external deltaY: t => float = "deltaY"
  @get external deltaZ: t => float = "deltaZ"
}

module Media = {
  type tag = JsxEvent.Media.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
}

module Image = {
  type tag = JsxEvent.Image.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
}

module Animation = {
  type tag = JsxEvent.Animation.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external animationName: t => string = "animationName"
  @get external pseudoElement: t => string = "pseudoElement"
  @get external elapsedTime: t => float = "elapsedTime"
}

module Transition = {
  type tag = JsxEvent.Transition.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get external propertyName: t => string = "propertyName"
  @get external pseudoElement: t => string = "pseudoElement"
  @get external elapsedTime: t => float = "elapsedTime"
}
