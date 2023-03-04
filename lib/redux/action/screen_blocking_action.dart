import 'common_action.dart';

class CommonScreenBlockingEnableAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Common Screen Blocking Enable Action';
  }
}

class CommonScreenBlockingDisableAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Common Screen Blocking Disable Action';
  }
}

class ScreenBlockingTimerAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Screen Blocking Timer Action';
  }
}

class ScreenBlockingDateAndTimeChangedAction implements ILoggingAction {
  final DateTime? pausedDateTime;

  ScreenBlockingDateAndTimeChangedAction({this.pausedDateTime});

  @override
  String toLogString() {
    return 'Screen Blocking Date And Time Changed Action';
  }
}
