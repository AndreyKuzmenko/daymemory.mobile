import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/question_list_edit/question_field_view_model.dart';

part 'question_list_edit_view_model.g.dart';

abstract class QuestionListEditViewModel implements Built<QuestionListEditViewModel, QuestionListEditViewModelBuilder> {
  String? get questionListId;

  bool get isSaving;

  QuestionFieldViewModel get questionList;

  BuiltList<QuestionFieldViewModel> get questions;

  FunctionHolder get addQuestionCommand;

  TypedFunctionHolder<ItemPositionDto> get reorderCommand;

  FunctionHolder get saveCommand;

  FunctionHolder get closeCommand;

  QuestionListEditViewModel._();

  factory QuestionListEditViewModel([void Function(QuestionListEditViewModelBuilder) updates]) = _$QuestionListEditViewModel;
}
