import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/device_action.dart';
import 'package:daymemory/redux/state/device_state/device_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<DeviceState> get deviceReducer {
  return combineReducers<DeviceState>([
    TypedReducer(_deviceDataLoaded).call,
    TypedReducer(_screenSizeChanged).call,
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
      ..deviceWidthType = action.size.width > 900 ? DeviceWidthType.wide : DeviceWidthType.narrow
      ..size = action.size,
  );
}
