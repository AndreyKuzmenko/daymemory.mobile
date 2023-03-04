import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/services/async_service_initializer.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:flutter/foundation.dart';

class DesktopLoggingService implements ILoggingService, IAsyncServiceInitializer<ILoggingService> {
  @override
  Future<ILoggingService> init() async {
    return this;
  }

  @override
  void logAction(action) {
    if (kDebugMode) {
      if (action != null) {
        print(action.toLogString());
      }
    } else if (action is ILoggingAction) {
      //_crashlytics.log(action.toLogString());
    }
  }

  @override
  void logError(dynamic e) {
    //_crashlytics.recordError(e, null);
  }

  @override
  void setUserId(String userId) {
    //_crashlytics.setUserIdentifier(userId);
  }
}
