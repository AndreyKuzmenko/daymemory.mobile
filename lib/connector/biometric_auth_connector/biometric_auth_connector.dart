import 'package:daymemory/connector/biometric_auth_connector/biometric_auth_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/biometric_auth/biometric_auth_view_model.dart';
import 'package:daymemory/widget/biometric_auth/biometric_auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BiometricAuthConnector extends PageConnector<BiometricAuthViewModel, BiometricAuthConverter> {
  const BiometricAuthConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, BiometricAuthViewModel viewModel) => BiometricAuthWidget(viewModel: viewModel);

  @override
  BiometricAuthConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = BiometricAuthConverter(
      dispatch: dispatch,
      availableBiometrics: state.biometricsState.availableBiometrics,
      locale: AppLocalizations.of(context)!,
    );
    return converter;
  }
}
