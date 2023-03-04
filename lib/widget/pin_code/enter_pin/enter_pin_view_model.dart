import 'package:built_value/built_value.dart';
import '../../common/function_holder.dart';

part 'enter_pin_view_model.g.dart';

abstract class EnterPinViewModel implements Built<EnterPinViewModel, EnterPinViewModelBuilder> {
  int get selectedEnteredIndicators;

  String get enteredPin;

  String get enteredPinTitle;

  TypedFunctionHolder<String> get typingCommand;

  FunctionHolder get clearCommand;

  FunctionHolder get forgotPinCommand;

  FunctionHolder get biometricCommand;

  bool get isRetry;

  bool? get isFaceId;

  EnterPinViewModel._();

  factory EnterPinViewModel([void Function(EnterPinViewModelBuilder)? updates]) = _$EnterPinViewModel;
}
