import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';

import 'common_action.dart';

class NotesIsLoadingAction implements ILoggingAction {
  final bool isLoading;

  final String? notebookId;

  const NotesIsLoadingAction({required this.isLoading, required this.notebookId});

  @override
  String toLogString() {
    return 'Notes Loading Action: $isLoading';
  }
}

class LoadNotesAction implements ILoggingAction {
  final String? notebookId;

  const LoadNotesAction({required this.notebookId});

  @override
  String toLogString() {
    return 'Load Notes Action: $notebookId';
  }
}

class NotesLoadedAction implements ILoggingAction {
  final List<NoteDto> notes;
  final bool isAllItemsLoaded;
  final String? notebookId;
  final SortingType sortingType;

  NotesLoadedAction(this.notes, this.isAllItemsLoaded, this.notebookId, this.sortingType);

  @override
  String toLogString() {
    return 'Notes Loaded Action, count: ${notes.length}';
  }
}

class NotesLoadedMoreAction implements ILoggingAction {
  final List<NoteDto> notes;
  final bool isAllItemsLoaded;
  final String? notebookId;
  final SortingType sortingType;

  NotesLoadedMoreAction(this.notes, this.isAllItemsLoaded, this.notebookId, this.sortingType);

  @override
  String toLogString() {
    return 'Notes Loaded More Action, count: ${notes.length}';
  }
}

class LoadMoreNotesAction implements ILoggingAction {
  // fetching [pageSize] cases per 1 request
  final int pageSize = 20;
  final String? notebookId;

  LoadMoreNotesAction(this.notebookId);

  @override
  String toLogString() {
    return 'Load More Notes Action, notebookId: $notebookId';
  }
}

class NotesIsLoadingMoreAction implements ILoggingAction {
  final bool isLoadingMore;
  final String? notebookId;

  const NotesIsLoadingMoreAction({required this.isLoadingMore, required this.notebookId});

  @override
  String toLogString() {
    return 'Notes Loading Action, notebookId: $notebookId';
  }
}

class NotesRefreshAction implements ILoggingAction {
  final String? notebookId;
  NotesRefreshAction(this.notebookId);

  @override
  String toLogString() {
    return 'Notes Refresh Action, notebookId: $notebookId';
  }
}
