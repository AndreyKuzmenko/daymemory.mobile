import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'forgot_password_view_model.g.dart';

abstract class ForgotPasswordViewModel implements Built<ForgotPasswordViewModel, ForgotPasswordViewModelBuilder> {
  String get title;

  String get forgotPasswordButtonText;

  String get instructionText;

  String? get email;

  String get emailLabel;

  String get emailPlaceholder;

  String get requiredFiledValidator;

  String get invalidEmailValidator;

  String get emailRegex;

  String get loadingMessage;

  FunctionHolder get backCommand;

  TypedFunctionHolder<String>? get forgotPassword;

  bool get isLoading;

  ForgotPasswordViewModel._();

  factory ForgotPasswordViewModel([void Function(ForgotPasswordViewModelBuilder)? updates]) = _$ForgotPasswordViewModel;
}
