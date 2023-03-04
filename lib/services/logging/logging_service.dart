import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/services/async_service_initializer.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

abstract class ILoggingService {
  void logAction(dynamic action);

  void logError(dynamic exception);

  void setUserId(String userId);
}

class LoggingService implements ILoggingService, IAsyncServiceInitializer<ILoggingService> {
  late FirebaseCrashlytics _crashlytics;

  @override
  Future<ILoggingService> init() async {
    _crashlytics = FirebaseCrashlytics.instance;
    await _crashlytics.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = _crashlytics.recordFlutterError;
    return this;
  }

  @override
  void logAction(action) {
    if (kDebugMode) {
      if (action != null) {
        print(action.toLogString());
      }
    } else if (action is ILoggingAction) {
      _crashlytics.log(action.toLogString());
    }
  }

  @override
  void logError(dynamic e) {
    try {
      var stackTrace = e.stackTrace;
      _crashlytics.recordError(e, stackTrace);
    } on NoSuchMethodError {
      _crashlytics.recordError(e, null);
    }
  }

  @override
  void setUserId(String userId) {
    _crashlytics.setUserIdentifier(userId);
  }
}
