import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/note/editnote_view_model.dart';
part 'answer_question_view_model.g.dart';

abstract class AnswerQuestionViewModel implements Built<AnswerQuestionViewModel, AnswerQuestionViewModelBuilder> {
  String get title;

  bool get isSaving;

  EditNoteViewModel get editViewModel;

  FunctionHolder get nextCommand;

  FunctionHolder get closeCommand;

  AnswerQuestionViewModel._();

  factory AnswerQuestionViewModel([void Function(AnswerQuestionViewModelBuilder)? updates]) = _$AnswerQuestionViewModel;
}
