import 'package:flutter/services.dart';
import 'package:wakelock/wakelock.dart';

abstract class IDeviceService {
  void selectionClickFeedback();

  void enableWakelock();

  void disableWakelock();
}

class DeviceService implements IDeviceService {
  @override
  void selectionClickFeedback() {
    HapticFeedback.selectionClick();
  }

  @override
  void enableWakelock() {
    Wakelock.enable();
  }

  @override
  void disableWakelock() {
    Wakelock.disable();
  }
}
