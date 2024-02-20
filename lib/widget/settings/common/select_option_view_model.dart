import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'select_option_view_model.g.dart';

class OptionViewModel {
  final String key;

  final String value;

  OptionViewModel({required this.key, required this.value});
}

enum OptionNavType { back, close }

abstract class SelectOptionViewModel implements Built<SelectOptionViewModel, SelectOptionViewModelBuilder> {
  String get title;

  String get selectedOptionId;

  String? get explanation;

  OptionNavType get navType;

  List<OptionViewModel> get options;

  TypedFunctionHolder<String> get optionSelectorCommand;

  FunctionHolder get backCommand;

  SelectOptionViewModel._();

  factory SelectOptionViewModel([void Function(SelectOptionViewModelBuilder)? updates]) = _$SelectOptionViewModel;
}
