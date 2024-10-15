import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../redux/action/enter_pin_action.dart';
import '../../redux/action/face_id_action.dart';
import '../../redux/action/instruction_action.dart';
import '../../widget/common/function_holder.dart';
import '../../widget/pin_code/enter_pin/enter_pin_view_model.dart';

class EnterPinConverter extends ViewModelConverter<EnterPinViewModel> {
  final Function(dynamic) dispatch;
  final AppLocalizations locale;
  final String enteredPin;
  final int selectedEnteredIndicators;
  final bool isRetry;
  final bool isBiometricEnabled;
  final AvailableBiometrics availableBiometrics;

  EnterPinConverter(
      {required this.dispatch,
      required this.locale,
      required this.enteredPin,
      required this.selectedEnteredIndicators,
      required this.isRetry,
      required this.isBiometricEnabled,
      required this.availableBiometrics});

  @override
  EnterPinViewModel build() {
    return EnterPinViewModel(
      (b) => b
        ..enteredPin = enteredPin
        ..enteredPinTitle = locale.enter_pin_title
        ..selectedEnteredIndicators = selectedEnteredIndicators
        ..isRetry = isRetry
        ..isBiometricsEnabled = _isBiometricsEnabled()
        ..typingCommand = TypedFunctionHolder<String>((char) {
          dispatch(CharEnteredPinAction(char: char));
          if (enteredPin.length == 3) {
            dispatch(matchPinCodeInstruction(enteredPin + char));
          }
        })
        ..clearCommand = FunctionHolder(() => dispatch((ClearEnteredPinAction())))
        ..biometricCommand = FunctionHolder(() {
          if (_isBiometricsEnabled()) {
            dispatch(
              AllowBiometricAction(
                reason: locale.biometrics_auth_reason,
                isEnabledFromSettings: false,
              ),
            );
          }
        })
        ..forgotPinCommand = FunctionHolder(() => dispatch((null))),
    );
  }

  bool _isBiometricsEnabled() => availableBiometrics == AvailableBiometrics.faceOrFinger && isBiometricEnabled;
}
