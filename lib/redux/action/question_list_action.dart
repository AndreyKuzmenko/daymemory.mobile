import 'package:daymemory/data/dtos/question_dto.dart';
import 'common_action.dart';

class ResetQuestionListStateAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Reset Question List State Action';
  }
}

class QuestionListChangeTextAction implements ILoggingAction {
  final String text;

  QuestionListChangeTextAction({required this.text});

  @override
  String toLogString() {
    return 'Question List Change Text Action';
  }
}

class SaveQuestionListAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Save Question List Action';
  }
}

class CreateQuestionListAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Save Question List Action';
  }
}

class QuestionListSavingAction implements ILoggingAction {
  final bool isSaving;

  QuestionListSavingAction({required this.isSaving});

  @override
  String toLogString() {
    return 'QuestionList Is Saving Action';
  }
}

class QuestionListUpdatedAction implements ILoggingAction {
  final String questionListId;
  final String text;
  final List<QuestionDto> questions;
  final int orderRank;

  QuestionListUpdatedAction({required this.questionListId, required this.text, required this.questions, required this.orderRank});

  @override
  String toLogString() {
    return 'Question List Updated Action';
  }
}

class QuestionListCreatedAction implements ILoggingAction {
  final String questionListId;
  final String text;
  final List<QuestionDto> questions;
  final int orderRank;

  QuestionListCreatedAction({required this.questionListId, required this.text, required this.questions, required this.orderRank});

  @override
  String toLogString() {
    return 'Question List Created Action';
  }
}

class DeleteQuestionListAction implements ILoggingAction {
  final String questionListId;

  DeleteQuestionListAction({required this.questionListId});

  @override
  String toLogString() {
    return 'Delete Question List Action';
  }
}

class QuestionListDeletedAction implements ILoggingAction {
  final String questionListId;

  QuestionListDeletedAction({required this.questionListId});

  @override
  String toLogString() {
    return 'Question List Deleted Action';
  }
}

class ReorderQuestionsAction implements ILoggingAction {
  int start;

  int current;

  ReorderQuestionsAction(this.start, this.current);

  @override
  String toLogString() {
    return 'Reorder Questions Action';
  }
}

//---------
//Questions
class CreateQuestionAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Create Question Action';
  }
}

class DeleteQuestionAction implements ILoggingAction {
  final String questionId;

  DeleteQuestionAction({required this.questionId});

  @override
  String toLogString() {
    return 'Delete Question Action';
  }
}

class UpdateQuestionAction implements ILoggingAction {
  final String text;

  final String questionId;

  UpdateQuestionAction({required this.text, required this.questionId});

  @override
  String toLogString() {
    return 'Question Updated Action';
  }
}
