import 'dart:ui';

import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';

abstract class ITrackAction {
  String toLogString();
}

abstract class ILoggingAction {
  String toLogString();
}

class ResetStoreToDefaultAction implements ILoggingAction, ITrackAction {
  @override
  String toLogString() {
    return 'Reset Store to default';
  }
}

class AppInitializedAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'App initialised';
  }
}

class AppResumedAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'App resumed';
  }
}

class AppPausedAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'App paused';
  }
}

class AppStateAction implements ILoggingAction {
  final bool isAppActive;
  final dynamic nextAction;

  AppStateAction({required this.isAppActive, this.nextAction});

  @override
  String toLogString() {
    return 'App State Action';
  }
}

class AppFirstInitializationAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'App First Initialization Action';
  }
}

class ConnectivityChangedAction implements ILoggingAction {
  final bool isOnline;

  const ConnectivityChangedAction({required this.isOnline});

  @override
  String toLogString() {
    return 'Network status changed, isOnline: $isOnline';
  }
}

class JailbreakCheckAction implements ILoggingAction {
  final dynamic nextAction;

  JailbreakCheckAction(this.nextAction);

  @override
  String toLogString() {
    return 'Check if device rooted';
  }
}

class JailbreakChangedStatusAction implements ILoggingAction {
  final JailbreakType jailbreakType;

  JailbreakChangedStatusAction({
    required this.jailbreakType,
  });

  @override
  String toLogString() {
    return 'Device root status changed';
  }
}

class ShowInfoDialogAction implements ILoggingAction {
  final DialogState dialog;

  ShowInfoDialogAction(this.dialog);

  @override
  String toLogString() {
    return 'Show dialog';
  }
}

class InfoDialogDismissedAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Dialog dismissed';
  }
}

class CloseDialogAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Dialog closed';
  }
}

class DelayedAction implements ILoggingAction {
  final int delay;
  final dynamic nextAction;

  const DelayedAction({
    this.delay = 500,
    required this.nextAction,
  });

  @override
  String toLogString() => 'Delayed Action';
}

class AppInitializationAction implements ILoggingAction {
  final dynamic nextAction;

  AppInitializationAction(this.nextAction);

  @override
  String toLogString() {
    return 'AppFirst Initialization Action';
  }
}

class FirstScreenAction implements ILoggingAction, ITrackAction {
  @override
  String toLogString() {
    return 'First Screen Action';
  }
}

class ChangeScreenSizeAction implements ILoggingAction {
  final Size size;

  ChangeScreenSizeAction({required this.size});

  @override
  String toLogString() {
    return 'Screen Resized Action, size: $size';
  }
}

class ScreenWidthChangedAction implements ILoggingAction {
  final DeviceWidthType deviceWidthType;
  final Size size;

  ScreenWidthChangedAction({
    required this.deviceWidthType,
    required this.size,
  });

  @override
  String toLogString() {
    return 'Screen Width Changed Action, width type: $deviceWidthType, size: $size';
  }
}

class CopyToClipboardAction implements ILoggingAction {
  final String text;

  CopyToClipboardAction({
    required this.text,
  });

  @override
  String toLogString() {
    return 'Copy To Clipboard Action';
  }
}
