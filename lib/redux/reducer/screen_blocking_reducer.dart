import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/screen_blocking_state/screen_blocking_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../action/screen_blocking_action.dart';

Reducer<ScreenBlockingState> get screenBlockingReducer {
  return combineReducers<ScreenBlockingState>([
    TypedReducer(_commonScreenBlockingEnableAction).call,
    TypedReducer(_commonScreenBlockingDisableAction).call,
    TypedReducer(_screenBlockingTimerAction).call,
    TypedReducer(_screenBlockingDateAndTimeChangedAction).call,
    TypedReducer(_appStateAction).call,
  ]);
}

ScreenBlockingState _commonScreenBlockingEnableAction(ScreenBlockingState state, CommonScreenBlockingEnableAction action) {
  return state.rebuild(
    (b) => b..isScreenBlockingActive = true,
  );
}

ScreenBlockingState _commonScreenBlockingDisableAction(ScreenBlockingState state, CommonScreenBlockingDisableAction action) {
  return state.rebuild(
    (b) => b..isScreenBlockingActive = false,
  );
}

ScreenBlockingState _screenBlockingTimerAction(ScreenBlockingState state, ScreenBlockingTimerAction action) {
  return state.rebuild(
    (b) => b..isTimerBlocking = true,
  );
}

ScreenBlockingState _screenBlockingDateAndTimeChangedAction(ScreenBlockingState state, ScreenBlockingDateAndTimeChangedAction action) {
  return state.rebuild(
    (b) => b..pausedDatetime = action.pausedDateTime,
  );
}

ScreenBlockingState _appStateAction(ScreenBlockingState state, AppStateAction action) {
  return state.rebuild(
    (b) => b..isAppActive = action.isAppActive,
  );
}
