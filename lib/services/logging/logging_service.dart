import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/redux/action/common_action.dart';
import 'package:daymemory/services/async_service_initializer.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

abstract class ILoggingService {
  void logAction(dynamic action);

  void logInfo(String info);

  void logError(dynamic exception);

  void setUserId(String userId);
}

class LoggingService implements ILoggingService, IAsyncServiceInitializer<ILoggingService> {
  late FirebaseCrashlytics _crashlytics;
  late ConfigurationSettings settings;
  late Mixpanel mixpanel;

  LoggingService({required this.settings});

  @override
  Future<ILoggingService> init() async {
    _crashlytics = FirebaseCrashlytics.instance;
    await _crashlytics.setCrashlyticsCollectionEnabled(true);
    mixpanel = await Mixpanel.init(settings.mixPanelKey, optOutTrackingDefault: false, trackAutomaticEvents: true);
    FlutterError.onError = (details) async {
      await _crashlytics.recordFlutterError(details);
      _logMixpanel("Error", {"Message": details.exception.toString()});
    };

    return this;
  }

  @override
  void logAction(action) {
    if (kDebugMode) {
      if (action != null) {
        print(action.toLogString());
      }
    } else if (action is ILoggingAction) {
      _logMixpanel("Action", {"Name": action.runtimeType.toString(), "Message": action.toLogString()});
      _crashlytics.log(action.toLogString());
    }
  }

  @override
  void logInfo(String info) {
    if (kDebugMode) {
      print(info);
    } else {
      _logMixpanel("Info", {"Message": info});
    }
  }

  @override
  void logError(dynamic e) {
    try {
      var stackTrace = e.stackTrace;
      _crashlytics.recordError(e, stackTrace);
      _logMixpanel("Error", {"Message": e.toString()});
    } on NoSuchMethodError {
      _logMixpanel("Error", {"Message": e.toString()});
      _crashlytics.recordError(e, null);
    }
  }

  void _logMixpanel(String name, [Map<String, dynamic>? properties]) {
    try {
      mixpanel.track(name, properties: properties);
      mixpanel.flush();
    } catch (e) {
      //DO NOTHING.
    }
  }

  @override
  void setUserId(String userId) {
    _crashlytics.setUserIdentifier(userId);
  }
}
