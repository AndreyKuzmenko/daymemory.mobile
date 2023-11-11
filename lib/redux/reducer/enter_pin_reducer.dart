import 'package:daymemory/redux/action/enter_pin_action.dart';
import 'package:daymemory/redux/state/enter_pin_state/enter_pin_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<EnterPinState> get enterPinReducer {
  return combineReducers<EnterPinState>([
    TypedReducer(_typingEnterPinAction).call,
    TypedReducer(_clearEnteredPinAction).call,
    TypedReducer(_retryEnteredPinAction).call,
    TypedReducer(_clearAllEnteredPinAction).call,
    TypedReducer(_matchPinAction).call,
    TypedReducer(_resetEnterPinAction).call
  ]);
}

EnterPinState _typingEnterPinAction(EnterPinState state, CharEnteredPinAction action) {
  final existingEnteredLength = state.enteredPin.length;

  if (existingEnteredLength < 4) {
    return state.rebuild(
      (b) => b
        ..enteredPin = state.enteredPin + action.char
        ..selectedEnteredIndicators = existingEnteredLength + 1
        ..isRetry = false,
    );
  } else {
    return state;
  }
}

EnterPinState _clearEnteredPinAction(EnterPinState state, ClearEnteredPinAction action) {
  if (state.enteredPin.length <= 1) {
    return state.rebuild(
      (b) => b
        ..enteredPin = ''
        ..selectedEnteredIndicators = 0
        ..isRetry = false,
    );
  } else {
    final updatedEnteredLength = state.enteredPin.length - 1;
    return state.rebuild((b) => b
      ..enteredPin = state.enteredPin.substring(0, updatedEnteredLength)
      ..selectedEnteredIndicators = updatedEnteredLength);
  }
}

EnterPinState _clearAllEnteredPinAction(EnterPinState state, ClearAllTypingEnterPinAction action) {
  return state.rebuild(
    (b) => b
      ..enteredPin = ''
      ..selectedEnteredIndicators = 0
      ..isRetry = false,
  );
}

EnterPinState _retryEnteredPinAction(EnterPinState state, RetryTypingEnterPinAction action) {
  return state.rebuild(
    (b) => b..isRetry = true,
  );
}

EnterPinState _matchPinAction(EnterPinState state, MatchPinAction action) {
  var pinEnterAttempts = state.pinEnterAttempts;
  return state.rebuild(
    (b) => b..pinEnterAttempts = pinEnterAttempts + 1,
  );
}

EnterPinState _resetEnterPinAction(EnterPinState state, ResetEnterPinAttempsAction action) {
  return state.rebuild(
    (b) => b..pinEnterAttempts = 0,
  );
}
