import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'restore_password_view_model.g.dart';

class RestorePasswordData {
  final String password;

  final String code;

  RestorePasswordData({required this.code, required this.password});
}

abstract class RestorePasswordViewModel implements Built<RestorePasswordViewModel, RestorePasswordViewModelBuilder> {
  String get title;

  String get changePasswordButtonText;

  String get instructionText;

  String get passwordLabel;

  String get passwordPlaceholder;

  String get codeLabel;

  String get codePlaceholder;

  String get requiredFiledValidator;

  String get loadingMessage;

  FunctionHolder get backCommand;

  TypedFunctionHolder<RestorePasswordData>? get changePassword;

  bool get isLoading;

  RestorePasswordViewModel._();

  factory RestorePasswordViewModel([void Function(RestorePasswordViewModelBuilder)? updates]) = _$RestorePasswordViewModel;
}
