import 'package:daymemory/data/dtos/notebook_dto.dart';

import 'common_action.dart';

class SelectDefaultNotebookAction implements ILoggingAction {
  final NotebookDto? notebook;

  final dynamic nextAction;

  SelectDefaultNotebookAction({required this.notebook, this.nextAction});

  @override
  String toLogString() {
    return 'Select Default Notebook Action';
  }
}

class DefaultNotebookSelectedAction implements ILoggingAction {
  final NotebookDto? notebook;

  DefaultNotebookSelectedAction({required this.notebook});

  @override
  String toLogString() {
    return 'Default Notebook Selected Action';
  }
}

class InitNotebookAction implements ILoggingAction {
  final String? notebookId;
  final String? title;
  final int orderRank;
  final bool showInReview;
  final SortingType sortingType;

  const InitNotebookAction({
    required this.notebookId,
    required this.title,
    required this.orderRank,
    required this.showInReview,
    required this.sortingType,
  });

  @override
  String toLogString() {
    return 'Init Notebook Action';
  }
}

class CreateNotebookAction implements ILoggingAction {
  final String title;
  final int orderRank;
  final SortingType sortingType;

  CreateNotebookAction({
    required this.title,
    required this.orderRank,
    required this.sortingType,
  });

  @override
  String toLogString() {
    return 'Save Notebook Action';
  }
}

class SaveNotebookAction implements ILoggingAction {
  final String title;
  final SortingType sortingType;
  SaveNotebookAction({
    required this.title,
    required this.sortingType,
  });

  @override
  String toLogString() {
    return 'Save Notebook Action';
  }
}

class NotebookSavingAction implements ILoggingAction {
  final bool isSaving;

  NotebookSavingAction({required this.isSaving});

  @override
  String toLogString() {
    return 'Notebook Is Saving Action';
  }
}

class NotebookUpdatedAction implements ILoggingAction {
  final String notebookId;
  final String title;
  final SortingType sortingType;

  NotebookUpdatedAction({
    required this.title,
    required this.notebookId,
    required this.sortingType,
  });

  @override
  String toLogString() {
    return 'Notebook Updated Action';
  }
}

class NotebookCreatedAction implements ILoggingAction {
  final String notebookId;
  final String title;

  NotebookCreatedAction({
    required this.title,
    required this.notebookId,
  });

  @override
  String toLogString() {
    return 'Notebook Created Action';
  }
}

class DeleteNotebookAction implements ILoggingAction {
  final String notebookId;

  DeleteNotebookAction({required this.notebookId});

  @override
  String toLogString() {
    return 'Delete Notebook Action';
  }
}

class NotebookDeletedAction implements ILoggingAction {
  final String notebookId;

  NotebookDeletedAction({required this.notebookId});

  @override
  String toLogString() {
    return 'Notebook Deleted Action';
  }
}

class ReorderNotebooksAction implements ILoggingAction {
  int start;

  int current;

  ReorderNotebooksAction(this.start, this.current);

  @override
  String toLogString() {
    return 'Reorder Notebooks Action';
  }
}

class ShowNotebookInReviewAction implements ILoggingAction {
  final String notebookId;
  final bool enabled;

  ShowNotebookInReviewAction({required this.notebookId, required this.enabled});

  @override
  String toLogString() {
    return 'Show Notebook In Review Action';
  }
}

class ChangeNotebookSortingAction implements ILoggingAction {
  final String? notebookId;
  final SortingType sortingType;

  ChangeNotebookSortingAction({required this.notebookId, required this.sortingType});

  @override
  String toLogString() {
    return 'Change Notebook Sorting Action';
  }
}
