import 'package:built_value/built_value.dart';
import 'package:daymemory/redux/state/create_pin_state/create_pin_type.dart';
import '../../common/function_holder.dart';
part 'create_pin_view_model.g.dart';

abstract class CreatePinViewModel implements Built<CreatePinViewModel, CreatePinViewModelBuilder> {
  int get selectedEnteredIndicators;

  int get selectedConfirmedIndicators;

  String get enteredPin;

  String get confirmedPin;

  CreatePinType get createPinType;

  List<String> get titles;

  TypedFunctionHolder<String> get typingCommand;

  FunctionHolder get clearCommand;

  FunctionHolder get backCommand;

  FunctionHolder get clearConfirmedPinCommand;

  FunctionHolder get successCommand;

  CreatePinViewModel._();

  factory CreatePinViewModel([void Function(CreatePinViewModelBuilder)? updates]) = _$CreatePinViewModel;
}
