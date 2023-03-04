import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/create_pin_state/create_pin_type.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widget/common/function_holder.dart';
import '../../widget/pin_code/create_pin/create_pin_view_model.dart';

class CreatePinConverter extends ViewModelConverter<CreatePinViewModel> {
  final Function(dynamic) dispatch;
  final AppLocalizations locale;
  final String enteredPin;
  final String confirmedPin;
  final int selectedEnteredIndicators;
  final int selectedConfirmedIndicators;
  final bool isRetryPin;
  final AvailableBiometrics availableBiometrics;

  CreatePinConverter(
      {required this.dispatch,
      required this.locale,
      required this.enteredPin,
      required this.confirmedPin,
      required this.selectedEnteredIndicators,
      required this.selectedConfirmedIndicators,
      required this.isRetryPin,
      required this.availableBiometrics});

  @override
  CreatePinViewModel build() {
    return CreatePinViewModel(
      (b) => b
        ..enteredPin = enteredPin
        ..confirmedPin = confirmedPin
        ..selectedEnteredIndicators = selectedEnteredIndicators
        ..selectedConfirmedIndicators = selectedConfirmedIndicators
        ..createPinType = _convertCreatePinUIState()
        ..titles = [locale.create_pin_title, locale.confirm_pin_title]
        ..typingCommand = TypedFunctionHolder<String>((char) => dispatch(TypePinAction(char: char)))
        ..clearCommand = FunctionHolder(() => dispatch((ClearPinAction())))
        ..backCommand = FunctionHolder(() => dispatch((ClearAllPinsAction())))
        ..clearConfirmedPinCommand = FunctionHolder(() => dispatch((DelayedAction(nextAction: RetryConfirmPinAction()))))
        ..successCommand = FunctionHolder(() {
          dispatch(SavingPinAction(pinCode: enteredPin));
          dispatch(PopBackStackAction());
        }),
    );
  }

  CreatePinType _convertCreatePinUIState() {
    if (enteredPin.length == 4) {
      if (confirmedPin.length == 4 && enteredPin != confirmedPin) {
        return CreatePinType.noMatch;
      } else if (confirmedPin.isEmpty && !isRetryPin) {
        return CreatePinType.openConfirm;
      } else if (confirmedPin.length < 4) {
        return CreatePinType.confirm;
      } else if (enteredPin == confirmedPin) {
        return CreatePinType.finish;
      }
    } else if (enteredPin.length < 4 || confirmedPin.isNotEmpty) {
      return CreatePinType.create;
    }
    return CreatePinType.openCreate;
  }
}
