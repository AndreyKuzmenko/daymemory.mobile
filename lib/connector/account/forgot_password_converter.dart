import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/login_action.dart';
import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/widget/account/forgot_password/forgot_password_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgotPasswordConverter extends ViewModelConverter<ForgotPasswordViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final String emailRegex;
  final bool isLoading;

  ForgotPasswordConverter({
    required this.dispatch,
    required this.locale,
    required this.emailRegex,
    required this.isLoading,
  });

  @override
  ForgotPasswordViewModel build() {
    return ForgotPasswordViewModel(
      (b) => b
        ..emailLabel = locale.email_field_label
        ..emailPlaceholder = locale.email_field_placeholder
        ..emailRegex = emailRegex
        ..isLoading = isLoading
        ..instructionText = locale.forgot_password_page_instruction
        ..loadingMessage = locale.loading_message
        ..requiredFiledValidator = locale.required_field_validator
        ..invalidEmailValidator = locale.invalid_email_validator
        ..forgotPasswordButtonText = locale.forgot_password_page_button
        ..backCommand = FunctionHolder(() => dispatch(PopBackStackAction()))
        ..forgotPassword = isLoading
            ? null
            : TypedFunctionHolder<String>((data) => dispatch(ForgotPasswordAction(
                  email: data,
                )))
        ..title = locale.forgot_password_page_title,
    );
  }
}
