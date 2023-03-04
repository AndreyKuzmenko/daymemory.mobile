import 'package:built_value/built_value.dart';

part 'enter_pin_state.g.dart';

abstract class EnterPinState implements Built<EnterPinState, EnterPinStateBuilder> {
  String get enteredPin;

  int get selectedEnteredIndicators;

  int get pinEnterAttempts;

  bool get isRetry;

  EnterPinState._();

  factory EnterPinState([void Function(EnterPinStateBuilder) updates]) = _$EnterPinState;

  factory EnterPinState.initial() => EnterPinState(
        (b) => b
          ..enteredPin = ''
          ..selectedEnteredIndicators = 0
          ..pinEnterAttempts = 0
          ..isRetry = false,
      );
}
