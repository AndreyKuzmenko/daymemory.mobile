import 'package:daymemory/data/dtos/question_list_dto.dart';

import 'common_action.dart';

class QuestionListsIsLoadingAction implements ILoggingAction {
  final bool isLoading;

  const QuestionListsIsLoadingAction({required this.isLoading});

  @override
  String toLogString() {
    return 'QuestionLists Loading Action';
  }
}

class QuestionListsFetchAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'QuestionLists Fetch Action';
  }
}

class QuestionListsLoadedAction implements ILoggingAction {
  final List<QuestionListDto> questionLists;

  QuestionListsLoadedAction(this.questionLists);

  @override
  String toLogString() {
    return 'QuestionLists Arrived Action';
  }
}

class QuestionListsRefreshAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'QuestionLists Refresh Action';
  }
}

class ReorderQuestionListsAction implements ILoggingAction {
  int start;

  int current;

  ReorderQuestionListsAction(this.start, this.current);

  @override
  String toLogString() {
    return 'Reorder Question Lists Action';
  }
}
