import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/login_action.dart';
import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/widget/account/restore_password/restore_password_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RestorePasswordConverter extends ViewModelConverter<RestorePasswordViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final String email;
  final bool isLoading;

  RestorePasswordConverter({
    required this.dispatch,
    required this.locale,
    required this.email,
    required this.isLoading,
  });

  @override
  RestorePasswordViewModel build() {
    return RestorePasswordViewModel(
      (b) => b
        ..codeLabel = locale.code_field_label
        ..codePlaceholder = locale.code_field_placeholder
        ..passwordLabel = locale.password_field_label
        ..passwordPlaceholder = locale.password_field_placeholder
        ..isLoading = isLoading
        ..instructionText = locale.restore_password_page_instruction
        ..loadingMessage = locale.loading_message
        ..requiredFiledValidator = locale.required_field_validator
        ..changePasswordButtonText = locale.restore_password_page_button
        ..backCommand = FunctionHolder(() => dispatch(PopBackStackAction()))
        ..changePassword = isLoading
            ? null
            : TypedFunctionHolder<RestorePasswordData>((data) => dispatch(RestorePasswordAction(
                  code: data.code,
                  email: email,
                  password: data.password,
                )))
        ..title = locale.restore_password_page_title,
    );
  }
}
