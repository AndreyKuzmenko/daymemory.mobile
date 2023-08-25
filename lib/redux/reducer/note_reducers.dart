import 'package:built_collection/built_collection.dart';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/redux/action/note_action.dart';
import 'package:daymemory/redux/state/note_state/note_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../action/navigation_action.dart';

Reducer<NoteState> get noteReducer {
  return combineReducers<NoteState>([
    TypedReducer(_initNoteAction),
    TypedReducer(_saveNoteAction),
    TypedReducer(_changeTextAction),
    TypedReducer(_imageSelectedAction),
    TypedReducer(_videoSelectedAction),
    TypedReducer(_fileDeleteAction),
    TypedReducer(_locationLoadedAction),
    TypedReducer(_navigateToAnswerQuestionListAction),
    TypedReducer(_changeDateAction),
    TypedReducer(_changeNotebookAction),
    TypedReducer(_reorderFilesAction),
    TypedReducer(_imageDateActivatedAction),
  ]);
}

NoteState _changeTextAction(NoteState state, NoteChangeTextAction action) {
  return state.rebuild(
    (b) => b
      ..text = action.text
      ..hasTextChanged = true,
  );
}

NoteState _reorderFilesAction(NoteState state, ReorderImagesAction action) {
  var items = state.mediaFiles.toList();
  var item = items[action.start];
  items.removeAt(action.start);
  items.insert(action.current > action.start ? action.current - 1 : action.current, item);

  return state.rebuild(
    (b) => b..mediaFiles = items.toBuiltList().toBuilder(),
  );
}

NoteState _changeNotebookAction(NoteState state, NoteChangeNotebookAction action) {
  return state.rebuild((b) => b..notebookId = action.notebookId);
}

NoteState _changeDateAction(NoteState state, NoteChangeDateAction action) {
  return state.rebuild((b) => b..date = action.date);
}

NoteState _locationLoadedAction(NoteState state, NoteLocationLoadedAction action) {
  return state.rebuild((b) => b..location = action.location);
}

NoteState _imageSelectedAction(NoteState state, NoteImageSelectedAction action) {
  return state.rebuild((b) => b..mediaFiles.add(action.image));
}

NoteState _videoSelectedAction(NoteState state, NoteVideoSelectedAction action) {
  return state.rebuild((b) => b..mediaFiles.add(action.file));
}

NoteState _fileDeleteAction(NoteState state, NoteDeleteFileAction action) {
  return state.rebuild((b) => b..mediaFiles.removeWhere((x) => x.id == action.fileId));
}

NoteState _imageDateActivatedAction(NoteState state, NoteImageDateActivatedAction action) {
  return state.rebuild((b) => b..isImageDateUsed = true);
}

NoteState _initNoteAction(NoteState state, InitNoteAction action) {
  return state.rebuild((b) => b
    ..noteId = action.noteId
    ..notebookId = action.notebookId
    ..text = action.text
    ..date = action.date
    ..hasTextChanged = false
    ..isImageDateUsed = false
    ..mediaFiles = action.mediaFiles.toBuiltList().toBuilder()
    ..location = action.location);
}

NoteState _navigateToAnswerQuestionListAction(NoteState state, NavigateToAnswerQuestionListAction action) {
  return NoteState.initial().rebuild((b) => b
    ..noteId = null
    ..text = ""
    ..mediaFiles = <FileDto>[].toBuiltList().toBuilder()
    ..location = null);
}

NoteState _saveNoteAction(NoteState state, NoteSavingAction action) {
  return state.rebuild((b) => b..isSaving = action.isSaving);
}
