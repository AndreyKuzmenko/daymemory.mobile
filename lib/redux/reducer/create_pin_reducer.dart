import 'package:daymemory/redux/action/create_pin_action.dart';
import 'package:daymemory/redux/state/create_pin_state/create_pin_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<CreatePinState> get createPinReducer {
  return combineReducers<CreatePinState>([
    TypedReducer(_typingPinAction),
    TypedReducer(_clearPinAction),
    TypedReducer(_clearConfirmedPinAction),
    TypedReducer(_clearAllPinsAction),
  ]);
}

CreatePinState _typingPinAction(CreatePinState state, TypePinAction action) {
  final existingEnteredLength = state.enteredPin.length;
  final existingConfirmedLength = state.confirmedPin.length;

  if (existingEnteredLength < 4) {
    return state.rebuild(
      (b) => b
        ..enteredPin = state.enteredPin + action.char
        ..confirmedPin = ''
        ..selectedEnteredIndicators = existingEnteredLength + 1
        ..isRetryPin = false,
    );
  } else if (existingEnteredLength == 4 && existingConfirmedLength < 4) {
    return state.rebuild(
      (b) => b
        ..confirmedPin = state.confirmedPin + action.char
        ..selectedConfirmedIndicators = existingConfirmedLength + 1
        ..isRetryPin = false,
    );
  } else {
    return state;
  }
}

CreatePinState _clearPinAction(CreatePinState state, ClearPinAction action) {
  if (state.enteredPin.length <= 1) {
    return state.rebuild(
      (b) => b
        ..enteredPin = ''
        ..selectedEnteredIndicators = 0
        ..isRetryPin = true,
    );
  } else if (state.confirmedPin.length <= 1 && state.enteredPin.length == 4) {
    return state.rebuild(
      (b) => b
        ..confirmedPin = ''
        ..selectedConfirmedIndicators = 0
        ..isRetryPin = true,
    );
  } else {
    if (state.confirmedPin.length <= 4 && state.enteredPin.length == 4) {
      final updatedConfirmedLength = state.confirmedPin.length - 1;
      return state.rebuild(
        (b) => b
          ..confirmedPin = state.confirmedPin.substring(0, updatedConfirmedLength)
          ..selectedConfirmedIndicators = updatedConfirmedLength
          ..isRetryPin = true,
      );
    } else {
      final updatedEnteredLength = state.enteredPin.length - 1;
      return state.rebuild(
        (b) => b
          ..enteredPin = state.enteredPin.substring(0, updatedEnteredLength)
          ..selectedEnteredIndicators = updatedEnteredLength
          ..isRetryPin = true,
      );
    }
  }
}

CreatePinState _clearConfirmedPinAction(CreatePinState state, RetryConfirmPinAction action) {
  return state.rebuild(
    (b) => b
      ..confirmedPin = ''
      ..isRetryPin = true
      ..selectedConfirmedIndicators = 0,
  );
}

CreatePinState _clearAllPinsAction(CreatePinState state, ClearAllPinsAction action) {
  return state.rebuild(
    (b) => b
      ..confirmedPin = ''
      ..enteredPin = ''
      ..selectedEnteredIndicators = 0
      ..selectedConfirmedIndicators = 0,
  );
}
