import 'package:daymemory/connector/account/forgot_password_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/account/forgot_password/forgot_password_view_model.dart';
import 'package:daymemory/widget/account/forgot_password/forgot_password_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgotPasswordConnector extends PageConnector<ForgotPasswordViewModel, ForgotPasswordConverter> {
  const ForgotPasswordConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, ForgotPasswordViewModel viewModel) => ForgotPasswordWidget(viewModel: viewModel);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(const LoginIsLoadingAction(isSending: false));
  }

  @override
  void onDispose(BuildContext context, AppState state, Function dispatch) {
    dispatch(const LoginIsLoadingAction(isSending: false));
  }

  @override
  ForgotPasswordConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final config = AppThemeWidget.getConfigurationSettings(context);

    final converter = ForgotPasswordConverter(
      locale: AppLocalizations.of(context)!,
      emailRegex: config.emailValidator,
      dispatch: dispatch,
      isLoading: state.loginState.isSending,
    );
    return converter;
  }
}
