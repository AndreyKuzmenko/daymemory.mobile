import 'package:built_value/built_value.dart';

part 'screen_blocking_state.g.dart';

abstract class ScreenBlockingState implements Built<ScreenBlockingState, ScreenBlockingStateBuilder> {
  bool get isScreenBlockingActive;
  bool get isTimerBlocking;
  bool get isAppActive;
  DateTime? get pausedDatetime;

  ScreenBlockingState._();

  factory ScreenBlockingState([void Function(ScreenBlockingStateBuilder) updates]) = _$ScreenBlockingState;

  factory ScreenBlockingState.initial() => ScreenBlockingState((b) => b
    ..isScreenBlockingActive = false
    ..pausedDatetime = null
    ..isAppActive = false
    ..isTimerBlocking = false);
}
