import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'dialog_state.g.dart';

abstract class DialogState implements Built<DialogState, DialogStateBuilder> {
  String get title;

  String get description;

  FunctionHolder? get positive;

  String? get positiveTitle;

  FunctionHolder? get negative;

  String? get negativeTitle;

  bool get reverseButtons;

  DialogState._();
  factory DialogState([void Function(DialogStateBuilder) updates]) = _$DialogState;
}
