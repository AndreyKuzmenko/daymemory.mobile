import 'package:daymemory/connector/create_pin_connector/create_pin_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../widget/pin_code/create_pin/create_pin_view_model.dart';
import '../../widget/pin_code/create_pin/create_pin_widget.dart';

class CreatePinConnector extends PageConnector<CreatePinViewModel, CreatePinConverter> {
  const CreatePinConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, CreatePinViewModel viewModel) => CreatePinWidget(viewModel: viewModel);

  @override
  CreatePinConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final createPinState = state.createPinState;

    final converter = CreatePinConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      selectedEnteredIndicators: createPinState.selectedEnteredIndicators,
      selectedConfirmedIndicators: createPinState.selectedConfirmedIndicators,
      enteredPin: createPinState.enteredPin,
      confirmedPin: createPinState.confirmedPin,
      isRetryPin: createPinState.isRetryPin,
      availableBiometrics: state.biometricsState.availableBiometrics,
    );
    return converter;
  }
}
