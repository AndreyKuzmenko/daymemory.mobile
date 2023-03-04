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
        ..isFaceId = _isFaceIdAvailable()
        ..typingCommand = TypedFunctionHolder<String>((char) {
          dispatch(CharEnteredPinAction(char: char));
          if (enteredPin.length == 3) {
            dispatch(matchPinCodeInstruction(enteredPin + char));
          }
        })
        ..clearCommand = FunctionHolder(() => dispatch((ClearEnteredPinAction())))
        ..biometricCommand = FunctionHolder(() {
          if (_isFaceIdAvailable() != null) {
            dispatch(
              AllowBiometricAction(
                reason: _isFaceIdAvailable()! ? locale.face_id_reason : locale.touch_id_reason,
                isFaceIdAllowed: _isFaceIdAvailable()!,
                isEnabledFromSettings: false,
              ),
            );
          }
        })
        ..forgotPinCommand = FunctionHolder(() => dispatch((null))),
    );
  }

  bool? _isFaceIdAvailable() {
    if (!isBiometricEnabled) {
      return null;
    }

    switch (availableBiometrics) {
      case AvailableBiometrics.face:
        return true;
      case AvailableBiometrics.faceAndFinger:
        return true;
      case AvailableBiometrics.finger:
        return false;
      default:
        return null;
    }
  }
}
