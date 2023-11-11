import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';

import 'common_action.dart';

class SaveNoteAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Save NoteAction';
  }
}

class NoteLoadLocationAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Note Load Location Action';
  }
}

class NoteLocationLoadedAction implements ILoggingAction {
  final LocationDto location;

  NoteLocationLoadedAction({required this.location});

  @override
  String toLogString() {
    return 'Note Location Loaded Action';
  }
}

class NoteTextChangedAction implements ILoggingAction {
  final String text;

  NoteTextChangedAction({required this.text});

  @override
  String toLogString() {
    return 'Note Change Text Action';
  }
}

class NoteDateChangedAction implements ILoggingAction {
  final DateTime date;

  NoteDateChangedAction({required this.date});

  @override
  String toLogString() {
    return 'Note Date Changed Action';
  }
}

class NoteImageDateActivatedAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Note Image Date Activated Action';
  }
}

class NoteNotebookChangedAction implements ILoggingAction {
  final String notebookId;

  NoteNotebookChangedAction({required this.notebookId});

  @override
  String toLogString() {
    return 'Note Notebook Changed Action';
  }
}

class NoteSelectImagesAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Note Select Images Action';
  }
}

class NoteSelectVideoAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Note Select Video Action';
  }
}

class NoteImagesReorderedAction implements ILoggingAction {
  int start;

  int current;

  NoteImagesReorderedAction(this.start, this.current);

  @override
  String toLogString() {
    return 'Note Images Reordered Action';
  }
}

class NoteImageSelectedAction implements ILoggingAction {
  final FileDto image;

  NoteImageSelectedAction({required this.image});

  @override
  String toLogString() {
    return 'Note Image Selected Action';
  }
}

class NoteVideoSelectedAction implements ILoggingAction {
  final FileDto file;

  NoteVideoSelectedAction({required this.file});

  @override
  String toLogString() {
    return 'Note Video Selected Action';
  }
}

class NoteFileDeletedAction implements ILoggingAction {
  final String fileId;

  NoteFileDeletedAction({required this.fileId});

  @override
  String toLogString() {
    return 'Note File Deleted Action';
  }
}

class NoteTagSelectedAction implements ILoggingAction {
  final String tagId;

  NoteTagSelectedAction({required this.tagId});

  @override
  String toLogString() {
    return 'Note Tag Selected Action';
  }
}

class NoteTagUnselectedAction implements ILoggingAction {
  final String tagId;

  NoteTagUnselectedAction({required this.tagId});

  @override
  String toLogString() {
    return 'Note Tag Unselected Action';
  }
}

class CreateNoteAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Save NoteAction';
  }
}

class DiscardNoteChangesAction implements ILoggingAction {
  final dynamic nextAction;

  DiscardNoteChangesAction(this.nextAction);

  @override
  String toLogString() {
    return 'Discard Note Changes Action';
  }
}

class NoteSavingAction implements ILoggingAction {
  final bool isSaving;

  NoteSavingAction({required this.isSaving});

  @override
  String toLogString() {
    return 'Note Is Saving Action';
  }
}

class InitNoteAction implements ILoggingAction {
  final String? noteId;
  final String? notebookId;
  final String? text;
  final DateTime date;
  final LocationDto? location;

  final List<FileDto> mediaFiles;
  final List<String> tags;

  const InitNoteAction({
    required this.noteId,
    required this.notebookId,
    required this.text,
    required this.location,
    required this.mediaFiles,
    required this.tags,
    required this.date,
  });

  @override
  String toLogString() {
    return 'Init Note Action, id=$noteId';
  }
}

class NoteUpdatedAction implements ILoggingAction {
  final String noteId;
  final String notebookId;
  final String text;
  final DateTime date;
  final DateTime modifiedDate;
  final List<FileDto> mediaFiles;
  final List<String> tags;
  final LocationDto? currentLocation;

  NoteUpdatedAction({
    required this.noteId,
    required this.notebookId,
    required this.text,
    required this.mediaFiles,
    required this.tags,
    required this.currentLocation,
    required this.date,
    required this.modifiedDate,
  });

  @override
  String toLogString() {
    return 'Note Updated Action';
  }
}

class NoteCreatedAction implements ILoggingAction {
  final String noteId;
  final String notebookId;
  final String text;
  final List<FileDto> mediaFiles;
  final List<String> tags;
  final LocationDto? currentLocation;
  final DateTime date;
  final DateTime modifiedDate;

  NoteCreatedAction({
    required this.noteId,
    required this.notebookId,
    required this.text,
    required this.mediaFiles,
    required this.tags,
    required this.currentLocation,
    required this.date,
    required this.modifiedDate,
  });

  @override
  String toLogString() {
    return 'Note Created Action';
  }
}

class DeleteNoteAction implements ILoggingAction {
  final String noteId;

  DeleteNoteAction({required this.noteId});

  @override
  String toLogString() {
    return 'Delete Note Action';
  }
}

class NoteDeletedAction implements ILoggingAction {
  final String noteId;

  NoteDeletedAction({required this.noteId});

  @override
  String toLogString() {
    return 'Note Deleted Action';
  }
}
