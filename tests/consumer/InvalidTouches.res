let notAnArray = (event: ReactEvent.Touch.t): array<WebAPI.Touch.t> =>
  event->ReactEvent.Touch.touches
