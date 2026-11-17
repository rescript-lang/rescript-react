let clipboard = (event: ReactEvent.Clipboard.t): option<WebAPI.DataTransfer.t> =>
  event->ReactEvent.Clipboard.clipboardData

let clipboardText = (event: ReactEvent.Clipboard.t) =>
  event->clipboard->Option.map(data => data->WebAPI.DataTransfer.getData("text/plain"))

let touches = (event: ReactEvent.Touch.t): WebAPI.TouchList.t => event->ReactEvent.Touch.touches

let changedTouches = (event: ReactEvent.Touch.t): WebAPI.TouchList.t =>
  event->ReactEvent.Touch.changedTouches

let targetTouches = (event: ReactEvent.Touch.t): WebAPI.TouchList.t =>
  event->ReactEvent.Touch.targetTouches

let firstTouch = (event: ReactEvent.Touch.t): Null.t<WebAPI.Touch.t> =>
  event->touches->WebAPI.TouchList.item(0)

let toForm = (form: ReactDOM.FormData.t): WebAPI.FormData.t => form
let fromForm = (form: WebAPI.FormData.t): ReactDOM.FormData.t => form
let getString = ReactDOM.FormData.getString
let getFile = ReactDOM.FormData.getFile
let getAll = ReactDOM.FormData.getAll
let makeForm = ReactDOM.FormData.make
let getNative = WebAPI.FormData.get

let action: ReactDOM.formStatusAction = form => {
  form->WebAPI.FormData.append(~name="action", ~value="called")
  ReactDOM.Sync
}

let statusData = (status: ReactDOM.formStatus): nullable<WebAPI.FormData.t> => status.data
