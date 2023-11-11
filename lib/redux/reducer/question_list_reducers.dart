import 'package:daymemory/data/dtos/question_dto.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';
import '../action/actions.dart';
import '../state/states.dart';

Reducer<QuestionListState> get questionListReducer {
  return combineReducers<QuestionListState>([
    TypedReducer(_navigateToEditQuestionListAction).call,
    TypedReducer(_navigateToNewQuestionListAction).call,
    TypedReducer(_createQuestionAction).call,
    TypedReducer(_updateQuestionAction).call,
    TypedReducer(_deleteQuestionAction).call,
    TypedReducer(_questionListChangeTextAction).call,
    TypedReducer(_resetQuestionListStateAction).call,
    TypedReducer(_questionListSavingAction).call,
    TypedReducer(_reorderQuestionsAction).call,
  ]);
}

QuestionListState _questionListSavingAction(QuestionListState state, QuestionListSavingAction action) {
  return state.rebuild(
    (b) => b..isSaving = action.isSaving,
  );
}

QuestionListState _resetQuestionListStateAction(QuestionListState state, ResetQuestionListStateAction action) {
  return state.rebuild((b) => QuestionListState.initial());
}

QuestionListState _navigateToEditQuestionListAction(QuestionListState state, NavigateToEditQuestionListAction action) {
  return state.rebuild((b) => b
    ..questionListId = action.questionListId
    ..text = action.text
    ..questions = action.questions.toList());
}

QuestionListState _navigateToNewQuestionListAction(QuestionListState state, NavigateToNewQuestionListAction action) {
  return QuestionListState.initial().rebuild((b) => b
    ..questionListId = null
    ..text = ""
    ..questions = <QuestionDto>[]);
}

QuestionListState _questionListChangeTextAction(QuestionListState state, QuestionListChangeTextAction action) {
  return state.rebuild(
    (b) => b..text = action.text,
  );
}

QuestionListState _reorderQuestionsAction(QuestionListState state, ReorderQuestionsAction action) {
  var questions = state.questions.toList();
  var item = questions[action.start];
  questions.removeAt(action.start);
  questions.insert(action.current > action.start ? action.current - 1 : action.current, item);

  return state.rebuild(
    (b) => b..questions = questions,
  );
}

//Questions
QuestionListState _createQuestionAction(QuestionListState state, CreateQuestionAction action) {
  var questions = state.questions.toList();
  questions.add(QuestionDto(id: const Uuid().v4(), text: ""));
  return state.rebuild((b) => b..questions = questions);
}

QuestionListState _updateQuestionAction(QuestionListState state, UpdateQuestionAction action) {
  var questions = state.questions;
  var question = questions.firstWhere((p0) => p0.id == action.questionId);
  question.text = action.text;
  return state.rebuild((b) => b..questions = questions);
}

QuestionListState _deleteQuestionAction(QuestionListState state, DeleteQuestionAction action) {
  var questions = state.questions;
  questions.removeWhere((element) => element.id == action.questionId);

  return state.rebuild((b) => b..questions = questions);
}
