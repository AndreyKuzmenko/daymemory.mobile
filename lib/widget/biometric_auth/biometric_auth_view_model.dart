import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'biometric_auth_view_model.g.dart';

abstract class BiometricAuthViewModel implements Built<BiometricAuthViewModel, BiometricAuthViewModelBuilder> {
  FunctionHolder get allowCommand;

  FunctionHolder get skipCommand;

  String get allowBiometricAuthTitle;

  String get skipTitle;

  String get subTitle;

  BiometricAuthViewModel._();

  factory BiometricAuthViewModel([void Function(BiometricAuthViewModelBuilder)? updates]) = _$BiometricAuthViewModel;
}
