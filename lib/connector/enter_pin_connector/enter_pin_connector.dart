import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/enter_pin_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../redux/action/screen_blocking_action.dart';
import '../../widget/pin_code/enter_pin/enter_pin_view_model.dart';
import '../../widget/pin_code/enter_pin/enter_pin_widget.dart';
import 'enter_pin_converter.dart';

class EnterPinConnector extends PageConnector<EnterPinViewModel, EnterPinConverter> {
  const EnterPinConnector({Key? key}) : super(key: key);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(CommonScreenBlockingEnableAction());
    dispatch(ResetEnterPinAttempsAction());
  }

  @override
  void onDispose(BuildContext context, AppState state, Function dispatch) {
    super.onDispose(context, state, dispatch);
    dispatch(CommonScreenBlockingDisableAction());
  }

  @override
  Widget buildWidget(BuildContext context, EnterPinViewModel viewModel) => EnterPinWidget(viewModel: viewModel);

  @override
  EnterPinConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final enterPinState = state.enterPinState;
    final biometricsState = state.biometricsState;
    final settingsState = state.settingsState;

    final converter = EnterPinConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      selectedEnteredIndicators: enterPinState.selectedEnteredIndicators,
      enteredPin: enterPinState.enteredPin,
      isRetry: enterPinState.isRetry,
      isBiometricEnabled: settingsState.isBiometricEnabled,
      availableBiometrics: biometricsState.availableBiometrics,
    );
    return converter;
  }
}
