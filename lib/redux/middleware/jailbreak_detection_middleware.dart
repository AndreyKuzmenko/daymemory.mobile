import 'package:daymemory/redux/action/common_action.dart';
import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/redux/state/jailbreak_type/jailbreak_type.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/jailbreak_service/jailbreak_service.dart';
import 'package:daymemory/services/logging/logging_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class JailbreakDetectionMiddleware implements MiddlewareClass<AppState> {
  final IJailbreakService jailbreakService;
  final ILoggingService loggingService;
  final IDeviceInfoService deviceInfoService;

  JailbreakDetectionMiddleware({
    required this.jailbreakService,
    required this.loggingService,
    required this.deviceInfoService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is JailbreakCheckAction) {
      await _checkJailbreak(
        store.dispatch,
        action.nextAction,
      );
    }
  }

  Future<void> _checkJailbreak(
    Function(dynamic action) dispatch,
    dynamic nextAction,
  ) async {
    if (deviceInfoService.deviceType == DeviceType.desktop) {
      dispatch(nextAction);
      return;
    }

    try {
      final resultType = await jailbreakService.checkJailbreak();
      dispatch(
        JailbreakChangedStatusAction(jailbreakType: resultType),
      );
      resultType == JailbreakType.validPhone
          ? dispatch(nextAction)
          : dispatch(DelayedAction(
              nextAction: NavigateToRootedDeviceAction(),
              delay: 500,
            ));
    } catch (e) {
      loggingService.logError(e);
      dispatch(
        JailbreakChangedStatusAction(jailbreakType: JailbreakType.invalidPhone),
      );
      dispatch(NavigateToRootedDeviceAction());
      rethrow;
    }
  }
}
