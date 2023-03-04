import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'signup_view_model.g.dart';

class SignupWithEmailData {
  final String firstName;

  final String lastName;

  final String email;

  final String password;

  SignupWithEmailData({required this.firstName, required this.lastName, required this.email, required this.password});
}

abstract class SignupViewModel implements Built<SignupViewModel, SignupViewModelBuilder> {
  String get title;

  String get signButtonText;

  String get privacyPolicyLink;

  String get termsOfUseLink;

  String? get email;

  String? get password;

  String? get firstName;

  String? get lastName;

  String get emailLabel;

  String get emailPlaceholder;

  String get passwordLabel;

  String get passwordPlaceholder;

  String get firstNameLabel;

  String get firstNamePlaceholder;

  String get lastNameLabel;

  String get lastNamePlaceholder;

  String get requiredFiledValidator;

  String get shortPasswordValidator;

  String get invalidEmailValidator;

  String get emailRegex;

  String get termsOfUseLabel;

  String get privacyPolicyLabel;

  String get andSeparatorLabel;

  String get loadingMessage;

  FunctionHolder get backCommand;

  TypedFunctionHolder<SignupWithEmailData>? get signupWithCredentials;

  bool get isLoading;

  SignupViewModel._();

  factory SignupViewModel([void Function(SignupViewModelBuilder)? updates]) = _$SignupViewModel;
}
