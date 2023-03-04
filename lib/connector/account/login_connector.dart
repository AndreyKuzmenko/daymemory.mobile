import 'package:daymemory/connector/account/login_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/account/login/login_view_model.dart';
import 'package:daymemory/widget/account/login/login_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginConnector extends PageConnector<LoginViewModel, LoginConverter> {
  const LoginConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, LoginViewModel viewModel) => LoginWidget(viewModel: viewModel);

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
  LoginConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final config = AppThemeWidget.getConfigurationSettings(context);

    final converter = LoginConverter(
      locale: AppLocalizations.of(context)!,
      appName: AppThemeWidget.getDeviceInfo(context).appName,
      privacyPolicyLink: config.privacyPolicyUrl,
      termsOfUseLink: config.termsOfUseUrl,
      showSocialButtons: state.deviceState.deviceType == DeviceType.phone || state.deviceState.deviceType == DeviceType.tablet,
      emailRegex: config.emailValidator,
      dispatch: dispatch,
      isLoading: state.loginState.isSending,
    );
    return converter;
  }
}
