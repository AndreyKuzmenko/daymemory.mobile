import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/answer_question_action.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/device_service/device_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class AnswerQuestionMiddleware implements MiddlewareClass<AppState> {
  final IDeviceService deviceFeedbackService;

  AnswerQuestionMiddleware({required this.deviceFeedbackService});

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is FinishAnswerQuestionListAction) {
      var state = store.state.answerQuestionState;
      String result = "<h2>${state.questionListTitle}</h2>";
      for (var i = 0; i < state.questions.length; i++) {
        result += "<h3>${state.questions[i]}</h3>";
        result += state.answers[i].text.isEmpty ? "<p>No answer<a>" : state.answers[i].text;
      }
      result += "<p>#Questions</p>";

      store.dispatch(NoteChangeTextAction(text: result));
      store.dispatch(CreateNoteAction());
    }
  }
}
