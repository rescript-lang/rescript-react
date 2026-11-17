let withoutNullCheck = (event: ReactEvent.Clipboard.t): WebAPI.DataTransfer.t =>
  event->ReactEvent.Clipboard.clipboardData
