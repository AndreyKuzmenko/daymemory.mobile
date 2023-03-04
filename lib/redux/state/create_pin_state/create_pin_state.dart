import 'package:built_value/built_value.dart';

part 'create_pin_state.g.dart';

abstract class CreatePinState
    implements Built<CreatePinState, CreatePinStateBuilder> {
  String get enteredPin;

  String get confirmedPin;

  bool get isRetryPin;

  int get selectedEnteredIndicators;

  int get selectedConfirmedIndicators;

  CreatePinState._();

  factory CreatePinState([void Function(CreatePinStateBuilder) updates]) =
      _$CreatePinState;

  factory CreatePinState.initial() => CreatePinState(
        (b) => b
          ..enteredPin = ''
          ..confirmedPin = ''
          ..selectedEnteredIndicators = 0
          ..selectedConfirmedIndicators = 0
          ..isRetryPin = false,
      );
}
