import 'package:daymemory/redux/action/answer_question_action.dart';
import 'package:daymemory/redux/state/answer_question_state/answer_question_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../action/navigation_action.dart';

Reducer<AnswerQuestionState> get answerQuestionReducer {
  return combineReducers<AnswerQuestionState>([
    TypedReducer(_answerQuestionAction).call,
    TypedReducer(_navigateToAnswerQuestionListAction).call,
    TypedReducer(_changeAnswerTextAction).call,
  ]);
}

AnswerQuestionState _answerQuestionAction(AnswerQuestionState state, AnswerQuestionAction action) {
  var index = state.currentIndex;
  var answer = QuestionAnswer(question: state.questions[state.currentIndex + 1], text: "");

  return state.rebuild((b) => b
    ..currentIndex = index + 1
    ..answers!.add(answer));
}

AnswerQuestionState _changeAnswerTextAction(AnswerQuestionState state, ChangeAnswerTextAction action) {
  var index = state.currentIndex;
  var answers = state.answers;
  var answer = answers[index];
  answer.text = action.text;

  return state.rebuild((b) => b..answers = answers);
}

AnswerQuestionState _navigateToAnswerQuestionListAction(AnswerQuestionState state, NavigateToAnswerQuestionListAction action) {
  return AnswerQuestionState.initial().rebuild((b) => b
    ..questions = action.questions
    ..questionListTitle = action.questionListTitle
    ..answers = [QuestionAnswer(question: action.questions[state.currentIndex], text: "")]
    ..currentIndex = 0);
}
