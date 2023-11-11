import 'package:daymemory/redux/state/face_id_state/biometric_auth_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../action/face_id_action.dart';

Reducer<BiometricAuthState> get faceIdReducer {
  return combineReducers<BiometricAuthState>([
    TypedReducer(_biometricRequestAction).call,
  ]);
}

BiometricAuthState _biometricRequestAction(BiometricAuthState state, BiometricUsageAction action) {
  return state.rebuild(
    (b) => b..availableBiometrics = action.availableBiometrics,
  );
}
