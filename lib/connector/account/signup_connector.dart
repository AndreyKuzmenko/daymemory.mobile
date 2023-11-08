import 'package:daymemory/connector/account/signup_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/account/signup/signup_view_model.dart';
import 'package:daymemory/widget/account/signup/signup_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignupConnector extends PageConnector<SignupViewModel, SignupConverter> {
  const SignupConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, SignupViewModel viewModel) => SignupWidget(viewModel: viewModel);

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
  SignupConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final config = AppThemeWidget.getConfigurationSettings(context);

    final converter = SignupConverter(
      locale: AppLocalizations.of(context)!,
      appName: AppThemeWidget.getDeviceInfo(context).appName,
      privacyPolicyLink: config.privacyPolicyUrl,
      termsOfUseLink: config.termsOfUseUrl,
      emailRegex: config.emailValidator,
      dispatch: dispatch,
      isLoading: state.loginState.isSending,
    );
    return converter;
  }
}
