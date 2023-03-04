import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'passcode_settings_view_model.g.dart';

abstract class PasscodeSettingsViewModel implements Built<PasscodeSettingsViewModel, PasscodeSettingsViewModelBuilder> {
  String get title;

  bool get isScreenBlockingEnabled;

  bool get isBiometricAvailable;

  String get screenBlockingOptionTitle;

  FunctionHolder get screenBlockingToogleCommand;

  String get screenBlockingExplanation;

  bool get isBiometricEnabled;

  bool get isBiometricActive;

  String get biometricOptionTitle;

  FunctionHolder get biometricToogleCommand;

  FunctionHolder get backCommand;

  String get requireAfterOptionTitle;

  String get requireAfterOptionValue;

  FunctionHolder get requireAfterCommand;

  PasscodeSettingsViewModel._();

  factory PasscodeSettingsViewModel([void Function(PasscodeSettingsViewModelBuilder)? updates]) = _$PasscodeSettingsViewModel;
}
