import 'package:daymemory/redux/action/enter_pin_action.dart';
import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_service/device_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../../services/dialog/dialog_service.dart';

class EnterPinMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;
  final IDialogService dialogService;
  final IDeviceService deviceFeedbackService;

  EnterPinMiddleware({required this.settingsService, required this.dialogService, required this.deviceFeedbackService});

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    if (action is CharEnteredPinAction || action is ClearEnteredPinAction) {
      deviceFeedbackService.selectionClickFeedback();
    }

    if (action is MatchPinAction) {
      _matchPins(store.dispatch, action.pinCode, store);
    }
  }

  void _matchPins(Function(dynamic) dispatch, String enteredPinCode, Store<AppState> store) async {
    var settings = await settingsService.getSettings();
    final storedPinCode = settings.pinCode;
    if (enteredPinCode == storedPinCode) {
      if (store.state.screenBlockingState.isTimerBlocking) {
        dispatch(PopBackStackAction());
      } else {
        dispatch(NavigateToRootAction());
      }
      dispatch(ClearAllTypingEnterPinAction());
    } else {
      dispatch(ClearAllTypingEnterPinAction());
      dispatch(RetryTypingEnterPinAction());
    }
  }
}
