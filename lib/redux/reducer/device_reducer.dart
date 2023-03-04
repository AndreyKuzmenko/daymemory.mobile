import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/device_action.dart';
import 'package:daymemory/redux/state/device_state/device_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<DeviceState> get deviceReducer {
  return combineReducers<DeviceState>([
    TypedReducer(_deviceDataLoaded),
    TypedReducer(_screenSizeChanged),
  ]);
}

DeviceState _deviceDataLoaded(DeviceState state, DeviceDataLoadedAction action) {
  return state.rebuild(
    (b) => b..deviceType = action.deviceType,
  );
}

DeviceState _screenSizeChanged(DeviceState state, ScreenWidthChangedAction action) {
  return state.rebuild(
    (b) => b
      ..deviceWidthType = action.deviceWidthType
      ..size = action.size,
  );
}
