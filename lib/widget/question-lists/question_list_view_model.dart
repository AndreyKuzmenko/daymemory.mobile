import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'question_list_view_model.g.dart';

abstract class QuestionListViewModel implements Built<QuestionListViewModel, QuestionListViewModelBuilder> {
  String get questionListId;

  String get text;

  List<String> get questions;

  int get orderRank;

  String get menuEdit;

  String get menuDelete;

  String get menuCancel;

  FunctionHolder get answerQuestionListCommand;

  FunctionHolder get editQuestionListCommand;

  FunctionHolder get deleteQuestionListCommand;

  QuestionListViewModel._();

  factory QuestionListViewModel([void Function(QuestionListViewModelBuilder) updates]) = _$QuestionListViewModel;
}
