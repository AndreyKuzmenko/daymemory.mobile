import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'dialog_view_model.g.dart';

abstract class DialogViewModel implements Built<DialogViewModel, DialogViewModelBuilder> {
  String get title;

  String get description;

  FunctionHolder? get positive;

  String? get positiveTitle;

  FunctionHolder? get negative;

  String? get negativeTitle;

  bool get reverseButtons;

  DialogViewModel._();

  factory DialogViewModel([void Function(DialogViewModelBuilder) updates]) = _$DialogViewModel;
}
