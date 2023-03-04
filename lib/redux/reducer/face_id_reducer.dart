import 'package:daymemory/redux/state/face_id_state/face_id_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../action/face_id_action.dart';

Reducer<FaceIdState> get faceIdReducer {
  return combineReducers<FaceIdState>([
    TypedReducer(_biometricRequestAction),
  ]);
}

FaceIdState _biometricRequestAction(FaceIdState state, BiometricUsageAction action) {
  return state.rebuild(
    (b) => b..availableBiometrics = action.availableBiometrics,
  );
}
