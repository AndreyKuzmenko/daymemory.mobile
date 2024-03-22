import 'common_action.dart';

class InitTagAction implements ILoggingAction {
  final String? tagId;
  final String? title;
  final int orderRank;

  const InitTagAction({
    required this.tagId,
    required this.title,
    required this.orderRank,
  });

  @override
  String toLogString() {
    return 'Init Tag Action';
  }
}

class CreateTagAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Create Tag Action';
  }
}

class TagSavingAction implements ILoggingAction {
  final bool isSaving;

  TagSavingAction({required this.isSaving});

  @override
  String toLogString() {
    return 'Tag Is Saving Action';
  }
}

class TagCreatedAction implements ILoggingAction {
  final String tagId;
  final String title;

  TagCreatedAction({
    required this.title,
    required this.tagId,
  });

  @override
  String toLogString() {
    return 'Tag Created Action';
  }
}

class ChangeTagTitleAction implements ILoggingAction {
  final String title;

  ChangeTagTitleAction({required this.title});

  @override
  String toLogString() {
    return 'Change Tag Title Action';
  }
}
