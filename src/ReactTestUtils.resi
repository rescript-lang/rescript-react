type thenable<'a>

external thenableToPromise: thenable<'a> => Js.Promise.t<'a> = "Promise.resolve"

@module("react-dom/test-utils.js") external act: (unit => unit) => unit = "act"
@module("react-dom/test-utils.js")
external actAsync: (unit => Js.Promise.t<'a>) => thenable<unit> = "act"

module Simulate: {
  @module("react-dom/test-utils.js") @scope("Simulate")
  external blur: Dom.element => unit = "blur"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external blurWithEvent: (Dom.element, {..}) => unit = "blur"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external cancel: Dom.element => unit = "cancel"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external cancelWithEvent: (Dom.element, {..}) => unit = "cancel"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external click: Dom.element => unit = "click"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external clickWithEvent: (Dom.element, {..}) => unit = "click"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external close: Dom.element => unit = "close"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external closeWithEvent: (Dom.element, {..}) => unit = "close"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external contextMenu: Dom.element => unit = "contextMenu"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external contextMenuWithEvent: (Dom.element, {..}) => unit = "contextMenu"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external copy: Dom.element => unit = "copy"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external copyWithEvent: (Dom.element, {..}) => unit = "copy"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external cut: Dom.element => unit = "cut"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external cutWithEvent: (Dom.element, {..}) => unit = "cut"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external auxClick: Dom.element => unit = "auxClick"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external auxClickWithEvent: (Dom.element, {..}) => unit = "auxClick"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external doubleClick: Dom.element => unit = "doubleClick"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external doubleClickWithEvent: (Dom.element, {..}) => unit = "doubleClick"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragEnd: Dom.element => unit = "dragEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragEndWithEvent: (Dom.element, {..}) => unit = "dragEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragStart: Dom.element => unit = "dragStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragStartWithEvent: (Dom.element, {..}) => unit = "dragStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external drop: Dom.element => unit = "drop"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dropWithEvent: (Dom.element, {..}) => unit = "drop"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external focus: Dom.element => unit = "focus"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external focusWithEvent: (Dom.element, {..}) => unit = "focus"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external input: Dom.element => unit = "input"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external inputWithEvent: (Dom.element, {..}) => unit = "input"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external invalid: Dom.element => unit = "invalid"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external invalidWithEvent: (Dom.element, {..}) => unit = "invalid"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external keyDown: Dom.element => unit = "keyDown"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external keyDownWithEvent: (Dom.element, {..}) => unit = "keyDown"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external keyPress: Dom.element => unit = "keyPress"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external keyPressWithEvent: (Dom.element, {..}) => unit = "keyPress"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external keyUp: Dom.element => unit = "keyUp"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external keyUpWithEvent: (Dom.element, {..}) => unit = "keyUp"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseDown: Dom.element => unit = "mouseDown"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseDownWithEvent: (Dom.element, {..}) => unit = "mouseDown"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseUp: Dom.element => unit = "mouseUp"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseUpWithEvent: (Dom.element, {..}) => unit = "mouseUp"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external paste: Dom.element => unit = "paste"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pasteWithEvent: (Dom.element, {..}) => unit = "paste"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pause: Dom.element => unit = "pause"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pauseWithEvent: (Dom.element, {..}) => unit = "pause"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external play: Dom.element => unit = "play"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external playWithEvent: (Dom.element, {..}) => unit = "play"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerCancel: Dom.element => unit = "pointerCancel"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerCancelWithEvent: (Dom.element, {..}) => unit = "pointerCancel"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerDown: Dom.element => unit = "pointerDown"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerDownWithEvent: (Dom.element, {..}) => unit = "pointerDown"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerUp: Dom.element => unit = "pointerUp"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerUpWithEvent: (Dom.element, {..}) => unit = "pointerUp"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external rateChange: Dom.element => unit = "rateChange"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external rateChangeWithEvent: (Dom.element, {..}) => unit = "rateChange"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external reset: Dom.element => unit = "reset"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external resetWithEvent: (Dom.element, {..}) => unit = "reset"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external seeked: Dom.element => unit = "seeked"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external seekedWithEvent: (Dom.element, {..}) => unit = "seeked"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external submit: Dom.element => unit = "submit"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external submitWithEvent: (Dom.element, {..}) => unit = "submit"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external touchCancel: Dom.element => unit = "touchCancel"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external touchCancelWithEvent: (Dom.element, {..}) => unit = "touchCancel"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external touchEnd: Dom.element => unit = "touchEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external touchEndWithEvent: (Dom.element, {..}) => unit = "touchEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external touchStart: Dom.element => unit = "touchStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external touchStartWithEvent: (Dom.element, {..}) => unit = "touchStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external volumeChange: Dom.element => unit = "volumeChange"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external volumeChangeWithEvent: (Dom.element, {..}) => unit = "volumeChange"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external drag: Dom.element => unit = "drag"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragWithEvent: (Dom.element, {..}) => unit = "drag"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragEnter: Dom.element => unit = "dragEnter"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragEnterWithEvent: (Dom.element, {..}) => unit = "dragEnter"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragExit: Dom.element => unit = "dragExit"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragExitWithEvent: (Dom.element, {..}) => unit = "dragExit"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragLeave: Dom.element => unit = "dragLeave"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragLeaveWithEvent: (Dom.element, {..}) => unit = "dragLeave"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragOver: Dom.element => unit = "dragOver"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external dragOverWithEvent: (Dom.element, {..}) => unit = "dragOver"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseMove: Dom.element => unit = "mouseMove"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseMoveWithEvent: (Dom.element, {..}) => unit = "mouseMove"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseOut: Dom.element => unit = "mouseOut"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseOutWithEvent: (Dom.element, {..}) => unit = "mouseOut"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseOver: Dom.element => unit = "mouseOver"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseOverWithEvent: (Dom.element, {..}) => unit = "mouseOver"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerMove: Dom.element => unit = "pointerMove"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerMoveWithEvent: (Dom.element, {..}) => unit = "pointerMove"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerOut: Dom.element => unit = "pointerOut"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerOutWithEvent: (Dom.element, {..}) => unit = "pointerOut"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerOver: Dom.element => unit = "pointerOver"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerOverWithEvent: (Dom.element, {..}) => unit = "pointerOver"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external scroll: Dom.element => unit = "scroll"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external scrollWithEvent: (Dom.element, {..}) => unit = "scroll"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external toggle: Dom.element => unit = "toggle"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external toggleWithEvent: (Dom.element, {..}) => unit = "toggle"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external touchMove: Dom.element => unit = "touchMove"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external touchMoveWithEvent: (Dom.element, {..}) => unit = "touchMove"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external wheel: Dom.element => unit = "wheel"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external wheelWithEvent: (Dom.element, {..}) => unit = "wheel"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external abort: Dom.element => unit = "abort"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external abortWithEvent: (Dom.element, {..}) => unit = "abort"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external animationEnd: Dom.element => unit = "animationEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external animationEndWithEvent: (Dom.element, {..}) => unit = "animationEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external animationIteration: Dom.element => unit = "animationIteration"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external animationIterationWithEvent: (Dom.element, {..}) => unit = "animationIteration"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external animationStart: Dom.element => unit = "animationStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external animationStartWithEvent: (Dom.element, {..}) => unit = "animationStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external canPlay: Dom.element => unit = "canPlay"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external canPlayWithEvent: (Dom.element, {..}) => unit = "canPlay"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external canPlayThrough: Dom.element => unit = "canPlayThrough"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external canPlayThroughWithEvent: (Dom.element, {..}) => unit = "canPlayThrough"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external durationChange: Dom.element => unit = "durationChange"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external durationChangeWithEvent: (Dom.element, {..}) => unit = "durationChange"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external emptied: Dom.element => unit = "emptied"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external emptiedWithEvent: (Dom.element, {..}) => unit = "emptied"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external encrypted: Dom.element => unit = "encrypted"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external encryptedWithEvent: (Dom.element, {..}) => unit = "encrypted"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external ended: Dom.element => unit = "ended"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external endedWithEvent: (Dom.element, {..}) => unit = "ended"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external error: Dom.element => unit = "error"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external errorWithEvent: (Dom.element, {..}) => unit = "error"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external gotPointerCapture: Dom.element => unit = "gotPointerCapture"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external gotPointerCaptureWithEvent: (Dom.element, {..}) => unit = "gotPointerCapture"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external load: Dom.element => unit = "load"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external loadWithEvent: (Dom.element, {..}) => unit = "load"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external loadedData: Dom.element => unit = "loadedData"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external loadedDataWithEvent: (Dom.element, {..}) => unit = "loadedData"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external loadedMetadata: Dom.element => unit = "loadedMetadata"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external loadedMetadataWithEvent: (Dom.element, {..}) => unit = "loadedMetadata"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external loadStart: Dom.element => unit = "loadStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external loadStartWithEvent: (Dom.element, {..}) => unit = "loadStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external lostPointerCapture: Dom.element => unit = "lostPointerCapture"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external lostPointerCaptureWithEvent: (Dom.element, {..}) => unit = "lostPointerCapture"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external playing: Dom.element => unit = "playing"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external playingWithEvent: (Dom.element, {..}) => unit = "playing"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external progress: Dom.element => unit = "progress"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external progressWithEvent: (Dom.element, {..}) => unit = "progress"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external seeking: Dom.element => unit = "seeking"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external seekingWithEvent: (Dom.element, {..}) => unit = "seeking"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external stalled: Dom.element => unit = "stalled"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external stalledWithEvent: (Dom.element, {..}) => unit = "stalled"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external suspend: Dom.element => unit = "suspend"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external suspendWithEvent: (Dom.element, {..}) => unit = "suspend"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external timeUpdate: Dom.element => unit = "timeUpdate"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external timeUpdateWithEvent: (Dom.element, {..}) => unit = "timeUpdate"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external transitionEnd: Dom.element => unit = "transitionEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external transitionEndWithEvent: (Dom.element, {..}) => unit = "transitionEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external waiting: Dom.element => unit = "waiting"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external waitingWithEvent: (Dom.element, {..}) => unit = "waiting"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseEnter: Dom.element => unit = "mouseEnter"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseEnterWithEvent: (Dom.element, {..}) => unit = "mouseEnter"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseLeave: Dom.element => unit = "mouseLeave"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external mouseLeaveWithEvent: (Dom.element, {..}) => unit = "mouseLeave"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerEnter: Dom.element => unit = "pointerEnter"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerEnterWithEvent: (Dom.element, {..}) => unit = "pointerEnter"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerLeave: Dom.element => unit = "pointerLeave"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external pointerLeaveWithEvent: (Dom.element, {..}) => unit = "pointerLeave"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external change: Dom.element => unit = "change"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external changeWithEvent: (Dom.element, {..}) => unit = "change"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external select: Dom.element => unit = "select"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external selectWithEvent: (Dom.element, {..}) => unit = "select"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external beforeInput: Dom.element => unit = "beforeInput"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external beforeInputWithEvent: (Dom.element, {..}) => unit = "beforeInput"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external compositionEnd: Dom.element => unit = "compositionEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external compositionEndWithEvent: (Dom.element, {..}) => unit = "compositionEnd"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external compositionStart: Dom.element => unit = "compositionStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external compositionStartWithEvent: (Dom.element, {..}) => unit = "compositionStart"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external compositionUpdate: Dom.element => unit = "compositionUpdate"
  @module("react-dom/test-utils.js") @scope("Simulate")
  external compositionUpdateWithEvent: (Dom.element, {..}) => unit = "compositionUpdate"
}
