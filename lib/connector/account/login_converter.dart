import 'dart:io';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/login_action.dart';
import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/widget/account/login/login_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginConverter extends ViewModelConverter<LoginViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final String appName;
  final String privacyPolicyLink;
  final String termsOfUseLink;
  final String emailRegex;
  final bool isLoading;
  final bool showSocialButtons;

  LoginConverter({
    required this.dispatch,
    required this.locale,
    required this.appName,
    required this.emailRegex,
    required this.termsOfUseLink,
    required this.privacyPolicyLink,
    required this.isLoading,
    required this.showSocialButtons,
  });

  @override
  LoginViewModel build() {
    return LoginViewModel(
      (b) => b
        ..loginWithApple = FunctionHolder(() => dispatch(LoginWithAppleIdAction()))
        ..loginWithFacebook = FunctionHolder(() => dispatch(LoginWithFacebookIdAction()))
        ..loginWithGoogle = FunctionHolder(() => dispatch(LoginWithGoogleIdAction()))
        ..emailLabel = locale.email_field_label
        ..emailPlaceholder = locale.email_field_placeholder
        ..emailRegex = emailRegex
        ..isLoading = isLoading
        ..passwordLabel = locale.password_field_label
        ..passwordPlaceholder = locale.password_field_placeholder
        ..loadingMessage = locale.loading_message
        ..createAccount = FunctionHolder(() => dispatch(NavigateToSignupAction()))
        ..loginWithEmailText = locale.login_page_login_button
        ..termsOfUseLabel = locale.terms_of_use
        ..privacyPolicyLabel = locale.privacy_policy
        ..andSeparatorLabel = locale.login_page_and_separator
        ..forgotPasswordLabel = locale.login_page_forgot_password_button
        ..createAccountLabel = locale.login_page_create_account_button
        ..requiredFieldValidator = locale.required_field_validator
        ..invalidEmailValidator = locale.invalid_email_validator
        ..forgotPassword = FunctionHolder(() => dispatch(NavigateToForgotPasswordAction()))
        ..backCommand = FunctionHolder(() => dispatch(PopBackStackAction()))
        ..showSocialButtons = showSocialButtons
        ..loginWithCredentials = isLoading
            ? null
            : TypedFunctionHolder<LoginWithEmailData>((data) => dispatch(LoginWithEmailAction(
                  email: data.email,
                  password: data.password,
                )))
        ..privacyPolicyLink = privacyPolicyLink
        ..termsOfUseLink = termsOfUseLink
        ..showAppleIdButton = Platform.isIOS
        ..title = locale.login_page_title,
    );
  }
}
