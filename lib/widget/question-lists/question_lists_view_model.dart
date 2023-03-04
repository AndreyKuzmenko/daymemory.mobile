import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/question-lists/question_list_view_model.dart';
part 'question_lists_view_model.g.dart';

abstract class QuestionListsViewModel implements Built<QuestionListsViewModel, QuestionListsViewModelBuilder> {
  bool get isLoading;

  String get title;

  String get loadingTitle;

  BuiltList<QuestionListViewModel> get questionLists;

  String get noQuestionLists;

  FunctionHolder get refreshCommand;

  TypedFunctionHolder<ItemPositionDto> get reorderCommand;

  FunctionHolder get newQuestionListCommand;

  QuestionListsViewModel._();

  factory QuestionListsViewModel([void Function(QuestionListsViewModelBuilder)? updates]) = _$QuestionListsViewModel;
}
