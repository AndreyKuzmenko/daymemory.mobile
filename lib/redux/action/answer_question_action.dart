import 'common_action.dart';

class AnswerQuestionAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Answer Question Action';
  }
}

class ChangeAnswerTextAction implements ILoggingAction {
  final String text;

  ChangeAnswerTextAction(this.text);

  @override
  String toLogString() {
    return 'Answer Question Action';
  }
}

class FinishAnswerQuestionListAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Finish Answer Question List Action';
  }
}
