import 'package:built_value/built_value.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';

part 'face_id_state.g.dart';

abstract class FaceIdState implements Built<FaceIdState, FaceIdStateBuilder> {
  AvailableBiometrics get availableBiometrics;

  //bool? get isFaceIdAllowed;

  FaceIdState._();

  factory FaceIdState([void Function(FaceIdStateBuilder) updates]) = _$FaceIdState;

  factory FaceIdState.initial() => FaceIdState(
        (b) => b..availableBiometrics = AvailableBiometrics.unknown,
        //..isFaceIdAllowed = null,
      );
}
