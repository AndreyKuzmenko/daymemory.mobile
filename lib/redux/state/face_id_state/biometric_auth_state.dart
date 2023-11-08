import 'package:built_value/built_value.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';

part 'biometric_auth_state.g.dart';

abstract class BiometricAuthState implements Built<BiometricAuthState, BiometricAuthStateBuilder> {
  AvailableBiometrics get availableBiometrics;

  BiometricAuthState._();

  factory BiometricAuthState([void Function(BiometricAuthStateBuilder) updates]) = _$BiometricAuthState;

  factory BiometricAuthState.initial() => BiometricAuthState(
        (b) => b..availableBiometrics = AvailableBiometrics.unknown,
      );
}
