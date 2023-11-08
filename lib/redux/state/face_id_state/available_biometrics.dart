import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'available_biometrics.g.dart';

class AvailableBiometrics extends EnumClass {
  static const AvailableBiometrics faceOrFinger = _$faceAndFinger;
  static const AvailableBiometrics unknown = _$unknown;

  const AvailableBiometrics._(String name) : super(name);

  static BuiltSet<AvailableBiometrics> get values => _$availableBiometricsValues;

  static AvailableBiometrics valueOf(String name) => _$availableBiometricsValueOf(name);
}
