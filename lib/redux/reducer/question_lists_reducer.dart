import 'package:daymemory/data/dtos/question_list_dto.dart';
import 'package:daymemory/redux/state/question_lists_state/question_lists_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../action/actions.dart';

Reducer<QuestionListsState> get questionListsReducer {
  return combineReducers<QuestionListsState>([
    TypedReducer(_questionListsIsLoadingAction).call,
    TypedReducer(_questionListsLoadedAction).call,
    TypedReducer(_questionListUpdatedAction).call,
    TypedReducer(_questionListCreatedAction).call,
    TypedReducer(_questionListDeletedAction).call,
    TypedReducer(_reorderQuestionListsAction).call,
  ]);
}

QuestionListsState _questionListsIsLoadingAction(QuestionListsState state, QuestionListsIsLoadingAction action) {
  return state.rebuild(
    (b) => b..isLoading = action.isLoading,
  );
}

QuestionListsState _questionListsLoadedAction(QuestionListsState state, QuestionListsLoadedAction action) {
  return state.rebuild(
    (b) => b..questionLists = action.questionLists,
  );
}

QuestionListsState _questionListUpdatedAction(QuestionListsState state, QuestionListUpdatedAction action) {
  var questionList = state.questionLists.firstWhere((element) => element.id == action.questionListId);
  questionList.questions = action.questions;
  questionList.orderRank = action.orderRank;
  questionList.text = action.text;

  return state.rebuild(
    (b) => b..questionLists = state.questionLists,
  );
}

QuestionListsState _questionListCreatedAction(QuestionListsState state, QuestionListCreatedAction action) {
  return state.rebuild(
    (b) => b..questionLists!.add(QuestionListDto(id: action.questionListId, text: action.text, questions: action.questions, orderRank: action.orderRank)),
  );
}

QuestionListsState _questionListDeletedAction(QuestionListsState state, QuestionListDeletedAction action) {
  return state.rebuild((b) => b..questionLists!.removeWhere((element) => element.id == action.questionListId));
}

QuestionListsState _reorderQuestionListsAction(QuestionListsState state, ReorderQuestionListsAction action) {
  var list = state.reorderQuestionList(action.start, action.current);
  return state.rebuild(
    (b) => b..questionLists = list,
  );
}
