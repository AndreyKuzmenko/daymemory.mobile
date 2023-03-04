import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'question_field_view_model.g.dart';

abstract class QuestionFieldViewModel implements Built<QuestionFieldViewModel, QuestionFieldViewModelBuilder> {
  String get fieldId;

  String get text;

  String get placeholder;

  FunctionHolder? get deleteCommand;

  TypedFunctionHolder<String> get textChangedCommand;

  QuestionFieldViewModel._();

  factory QuestionFieldViewModel([void Function(QuestionFieldViewModelBuilder) updates]) = _$QuestionFieldViewModel;
}
