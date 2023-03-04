import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/login_action.dart';
import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/widget/account/signup/signup_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignupConverter extends ViewModelConverter<SignupViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final String appName;
  final String privacyPolicyLink;
  final String termsOfUseLink;
  final String emailRegex;
  final bool isLoading;

  SignupConverter({
    required this.dispatch,
    required this.locale,
    required this.appName,
    required this.emailRegex,
    required this.termsOfUseLink,
    required this.privacyPolicyLink,
    required this.isLoading,
  });

  @override
  SignupViewModel build() {
    return SignupViewModel(
      (b) => b
        ..firstNameLabel = locale.first_name_field_label
        ..firstNamePlaceholder = locale.first_name_field_placeholder
        ..lastNameLabel = locale.last_name_field_label
        ..lastNamePlaceholder = locale.last_name_field_placeholder
        ..emailLabel = locale.email_field_label
        ..emailPlaceholder = locale.email_field_placeholder
        ..isLoading = isLoading
        ..passwordLabel = locale.password_field_label
        ..passwordPlaceholder = locale.password_field_placeholder
        ..loadingMessage = locale.loading_message
        ..termsOfUseLabel = locale.terms_of_use
        ..privacyPolicyLabel = locale.privacy_policy
        ..andSeparatorLabel = locale.signup_page_and_separator
        ..requiredFiledValidator = locale.required_field_validator
        ..shortPasswordValidator = locale.short_password_validator
        ..invalidEmailValidator = locale.invalid_email_validator
        ..backCommand = FunctionHolder(() => dispatch(PopBackStackAction()))
        ..signButtonText = locale.signup_page_signup_button
        ..signupWithCredentials = isLoading
            ? null
            : TypedFunctionHolder<SignupWithEmailData>((data) => dispatch(SignupWithEmailAction(
                  firstName: data.firstName,
                  lastName: data.lastName,
                  email: data.email,
                  password: data.password,
                )))
        ..privacyPolicyLink = privacyPolicyLink
        ..termsOfUseLink = termsOfUseLink
        ..emailRegex = emailRegex
        ..title = locale.signup_page_title,
    );
  }
}
