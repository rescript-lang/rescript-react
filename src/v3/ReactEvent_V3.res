type synthetic<'a> = ReactEvent.synthetic<'a>

module MakeEventWithType = (
  Type: {
    type t
  },
) => {
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external bubbles: Type.t => bool = "bubbles"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external cancelable: Type.t => bool = "cancelable"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external currentTarget: Type.t => {..} = "currentTarget" /* Should return Dom.eventTarget */
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external defaultPrevented: Type.t => bool = "defaultPrevented"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external eventPhase: Type.t => int = "eventPhase"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external isTrusted: Type.t => bool = "isTrusted"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external nativeEvent: Type.t => {..} = "nativeEvent" /* Should return Dom.event */
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external preventDefault: Type.t => unit = "preventDefault"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external isDefaultPrevented: Type.t => bool = "isDefaultPrevented"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external stopPropagation: Type.t => unit = "stopPropagation"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external isPropagationStopped: Type.t => bool = "isPropagationStopped"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external target: Type.t => {..} = "target" /* Should return Dom.eventTarget */
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external timeStamp: Type.t => float = "timeStamp"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external type_: Type.t => string = "type"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external persist: Type.t => unit = "persist"
}

module Synthetic = {
  type tag = ReactEvent.Synthetic.tag
  type t = synthetic<tag>
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external bubbles: synthetic<'a> => bool = "bubbles"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external cancelable: synthetic<'a> => bool = "cancelable"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external currentTarget: synthetic<'a> => {..} =
    "currentTarget" /* Should return Dom.eventTarget */
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external defaultPrevented: synthetic<'a> => bool = "defaultPrevented"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external eventPhase: synthetic<'a> => int = "eventPhase"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external isTrusted: synthetic<'a> => bool = "isTrusted"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external nativeEvent: synthetic<'a> => {..} = "nativeEvent" /* Should return Dom.event */
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external preventDefault: synthetic<'a> => unit = "preventDefault"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external isDefaultPrevented: synthetic<'a> => bool = "isDefaultPrevented"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external stopPropagation: synthetic<'a> => unit = "stopPropagation"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external isPropagationStopped: synthetic<'a> => bool = "isPropagationStopped"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external target: synthetic<'a> => {..} = "target" /* Should return Dom.eventTarget */
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external timeStamp: synthetic<'a> => float = "timeStamp"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external type_: synthetic<'a> => string = "type"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external persist: synthetic<'a> => unit = "persist"
}

/* Cast any event type to the general synthetic type. This is safe, since synthetic is more general */
@deprecated("Jsx 3 is deprecated, use jsx 4 instead")
external toSyntheticEvent: synthetic<'a> => Synthetic.t = "%identity"

module Clipboard = {
  type tag = ReactEvent.Clipboard.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })

  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external clipboardData: t => {..} = "clipboardData" /* Should return Dom.dataTransfer */
}

module Composition = {
  type tag = ReactEvent.Composition.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external data: t => string = "data"
}

module Keyboard = {
  type tag = ReactEvent.Keyboard.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external altKey: t => bool = "altKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external charCode: t => int = "charCode"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external ctrlKey: t => bool = "ctrlKey"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external getModifierState: (t, string) => bool = "getModifierState"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external key: t => string = "key"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external keyCode: t => int = "keyCode"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external locale: t => string = "locale"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external location: t => int = "location"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external metaKey: t => bool = "metaKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external repeat: t => bool = "repeat"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external shiftKey: t => bool = "shiftKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external which: t => int = "which"
}

module Focus = {
  type tag = ReactEvent.Focus.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @return(nullable) @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external relatedTarget: t => option<{..}> = "relatedTarget" /* Should return Dom.eventTarget */
}

module Form = {
  type tag = ReactEvent.Form.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
}

module Mouse = {
  type tag = ReactEvent.Mouse.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external altKey: t => bool = "altKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external button: t => int = "button"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external buttons: t => int = "buttons"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external clientX: t => int = "clientX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external clientY: t => int = "clientY"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external ctrlKey: t => bool = "ctrlKey"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external getModifierState: (t, string) => bool = "getModifierState"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external metaKey: t => bool = "metaKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external movementX: t => int = "movementX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external movementY: t => int = "movementY"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external pageX: t => int = "pageX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external pageY: t => int = "pageY"
  @get @return(nullable) @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external relatedTarget: t => option<{..}> = "relatedTarget" /* Should return Dom.eventTarget */
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external screenX: t => int = "screenX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external screenY: t => int = "screenY"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external shiftKey: t => bool = "shiftKey"
}

module Pointer = {
  type tag = ReactEvent.Pointer.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })

  // UIEvent
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external detail: t => int = "detail"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external view: t => Dom.window = "view" /* Should return DOMAbstractView/WindowProxy */

  // MouseEvent
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external screenX: t => int = "screenX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external screenY: t => int = "screenY"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external clientX: t => int = "clientX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external clientY: t => int = "clientY"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external pageX: t => int = "pageX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external pageY: t => int = "pageY"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external movementX: t => int = "movementX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external movementY: t => int = "movementY"

  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external ctrlKey: t => bool = "ctrlKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external shiftKey: t => bool = "shiftKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external altKey: t => bool = "altKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external metaKey: t => bool = "metaKey"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external getModifierState: (t, string) => bool = "getModifierState"

  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external button: t => int = "button"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external buttons: t => int = "buttons"

  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") @return(nullable)
  external relatedTarget: t => option<{..}> = "relatedTarget" /* Should return Dom.eventTarget */

  // PointerEvent
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external pointerId: t => Dom.eventPointerId = "pointerId"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external width: t => float = "width"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external height: t => float = "height"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external pressure: t => float = "pressure"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external tangentialPressure: t => float = "tangentialPressure"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external tiltX: t => int = "tiltX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external tiltY: t => int = "tiltY"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external twist: t => int = "twist"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external pointerType: t => string = "pointerType"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external isPrimary: t => bool = "isPrimary"
}

module Selection = {
  type tag = ReactEvent.Selection.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
}

module Touch = {
  type tag = ReactEvent.Touch.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external altKey: t => bool = "altKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external changedTouches: t => {..} = "changedTouches" /* Should return Dom.touchList */
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external ctrlKey: t => bool = "ctrlKey"
  @send @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external getModifierState: (t, string) => bool = "getModifierState"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external metaKey: t => bool = "metaKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external shiftKey: t => bool = "shiftKey"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external targetTouches: t => {..} = "targetTouches" /* Should return Dom.touchList */
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external touches: t => {..} = "touches" /* Should return Dom.touchList */
}

module UI = {
  type tag = ReactEvent.UI.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external detail: t => int = "detail"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external view: t => Dom.window = "view" /* Should return DOMAbstractView/WindowProxy */
}

module Wheel = {
  type tag = ReactEvent.Wheel.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external deltaMode: t => int = "deltaMode"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external deltaX: t => float = "deltaX"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external deltaY: t => float = "deltaY"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead") external deltaZ: t => float = "deltaZ"
}

module Media = {
  type tag = ReactEvent.Media.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
}

module Image = {
  type tag = ReactEvent.Image.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
}

module Animation = {
  type tag = ReactEvent.Animation.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external animationName: t => string = "animationName"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external pseudoElement: t => string = "pseudoElement"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external elapsedTime: t => float = "elapsedTime"
}

module Transition = {
  type tag = ReactEvent.Transition.tag
  type t = synthetic<tag>
  include MakeEventWithType({
    type t = t
  })
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external propertyName: t => string = "propertyName"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external pseudoElement: t => string = "pseudoElement"
  @get @deprecated("Jsx 3 is deprecated, use jsx 4 instead")
  external elapsedTime: t => float = "elapsedTime"
}
