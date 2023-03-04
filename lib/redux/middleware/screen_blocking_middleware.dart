import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/screen_blocking_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/logging/config_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import '../../services/settings_service/settings_service.dart';

class ScreenBlockingMiddleware implements MiddlewareClass<AppState> {
  final IConfigService configService;
  final ISettingsService settingsService;

  ScreenBlockingMiddleware({
    required this.configService,
    required this.settingsService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    if (action is AppResumedAction) {
      var screenBlockingState = store.state.screenBlockingState;
      var settingsState = store.state.settingsState;
      if (settingsState.isPasscodeEnabled &&
          screenBlockingState.pausedDatetime != null &&
          DateTime.now().difference(screenBlockingState.pausedDatetime!).inSeconds > settingsState.passcodeRequireAfterSeconds) {
        await _lockScreen(store);
      }
      store.dispatch(ScreenBlockingDateAndTimeChangedAction(pausedDateTime: null));
    } else if (action is AppPausedAction && store.state.settingsState.isPasscodeEnabled) {
      store.dispatch(ScreenBlockingDateAndTimeChangedAction(pausedDateTime: DateTime.now()));
    } else if (action is AppStateAction) {
      if (action.nextAction != null) {
        store.dispatch(DelayedAction(nextAction: action.nextAction, delay: 300));
      }
    }
  }

  Future _lockScreen(Store<AppState> store) async {
    var settings = await settingsService.getSettings();
    final pin = settings.pinCode;
    if (!store.state.screenBlockingState.isScreenBlockingActive && pin != null && pin.isNotEmpty) {
      store.dispatch(ScreenBlockingTimerAction());
      store.dispatch(NavigateToEnterPinAction());
    }
  }
}
