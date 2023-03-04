import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'login_view_model.g.dart';

class LoginWithEmailData {
  final String email;

  final String password;

  LoginWithEmailData({required this.email, required this.password});
}

abstract class LoginViewModel implements Built<LoginViewModel, LoginViewModelBuilder> {
  String get title;

  String get loginWithEmailText;

  String get privacyPolicyLink;

  String get termsOfUseLink;

  bool get showAppleIdButton;

  String get emailLabel;

  String get emailPlaceholder;

  String get passwordLabel;

  String get passwordPlaceholder;

  String get requiredFieldValidator;

  String get invalidEmailValidator;

  String get emailRegex;

  String? get email;

  String? get password;

  String get termsOfUseLabel;

  String get privacyPolicyLabel;

  String get andSeparatorLabel;

  String get forgotPasswordLabel;

  String get createAccountLabel;

  String get loadingMessage;

  bool get showSocialButtons;

  FunctionHolder get backCommand;

  FunctionHolder get forgotPassword;

  FunctionHolder get createAccount;

  FunctionHolder? get loginWithApple;

  FunctionHolder? get loginWithGoogle;

  FunctionHolder? get loginWithFacebook;

  TypedFunctionHolder<LoginWithEmailData>? get loginWithCredentials;

  bool get isLoading;

  LoginViewModel._();

  factory LoginViewModel([void Function(LoginViewModelBuilder)? updates]) = _$LoginViewModel;
}
