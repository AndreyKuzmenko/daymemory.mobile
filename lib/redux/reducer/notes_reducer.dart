import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/note_action.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/state/notes_state/notes_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import '../action/notes_action.dart';

Reducer<NotesState> get notesReducer {
  return combineReducers<NotesState>([
    TypedReducer(_notesIsLoadingAction).call,
    TypedReducer(_notesLoadedAction).call,
    TypedReducer(_noteIsLoadingMoreAction).call,
    TypedReducer(_notesLoadedMoreAction).call,
    TypedReducer(_noteUpdatedAction).call,
    TypedReducer(_noteCreatedAction).call,
    TypedReducer(_noteDeletedAction).call,
    TypedReducer(_deviceDataClearedAction).call,
  ]);
}

NotesState _notesIsLoadingAction(NotesState state, NotesIsLoadingAction action) {
  return state.rebuild(
    (b) => b..isLoading = action.isLoading,
  );
}

NotesState _notesLoadedAction(NotesState state, NotesLoadedAction action) {
  return state.rebuild(
    (b) => b
      ..notes = action.notes
      ..notebookId = action.notebookId
      ..sortingType = action.sortingType
      ..hasLoadedAll = action.isAllItemsLoaded
      ..lastItemDateTime = action.notes.isNotEmpty
          ? action.sortingType == SortingType.byCreatedDate
              ? action.notes.last.date.millisecondsSinceEpoch
              : action.notes.last.modifiedDate.millisecondsSinceEpoch
          : null,
  );
}

NotesState _noteIsLoadingMoreAction(NotesState state, NotesIsLoadingMoreAction action) {
  return state.rebuild(
    (b) => b..isLoadingMore = action.isLoadingMore,
  );
}

NotesState _notesLoadedMoreAction(NotesState state, NotesLoadedMoreAction action) {
  var notes = state.notes.toList();
  notes.addAll(action.notes);

  return state.rebuild(
    (b) => b
      ..notes = notes
      ..sortingType = action.sortingType
      ..hasLoadedAll = action.isAllItemsLoaded
      ..lastItemDateTime = action.notes.isNotEmpty
          ? action.sortingType == SortingType.byCreatedDate
              ? action.notes.last.date.millisecondsSinceEpoch
              : action.notes.last.modifiedDate.millisecondsSinceEpoch
          : null,
  );
}

NotesState _noteUpdatedAction(NotesState state, NoteUpdatedAction action) {
  var notes = state.notes.toList();
  var note = notes.firstWhereOrNull((element) => element.id == action.noteId);

  if (note != null) {
    if (note.notebookId != action.notebookId) {
      notes.removeWhere((element) => element.id == note.id);
    } else {
      note.text = action.text;
      note.notebookId = action.notebookId;
      note.mediaFiles = action.mediaFiles;
      note.date = action.date;
      note.tags = action.tags;
      note.modifiedDate = DateTime.now().toUtc();
      note.location = action.currentLocation;
    }
  }
  _sortNotes(state, notes);
  return state.rebuild(
    (b) => b..notes = notes,
  );
}

void _sortNotes(NotesState state, List<NoteDto> notes) {
  if (state.sortingType == SortingType.byCreatedDate) {
    notes.sort((a, b) => b.date.compareTo(a.date));
  } else {
    notes.sort((a, b) => b.modifiedDate.compareTo(a.modifiedDate));
  }
}

NotesState _noteCreatedAction(NotesState state, NoteCreatedAction action) {
  var notes = state.notes.toList();

  if (state.notebookId == action.notebookId || state.notebookId == null) {
    notes.insert(
        0,
        NoteDto(
          id: action.noteId,
          notebookId: action.notebookId,
          text: action.text,
          date: action.date,
          isEncrypted: false,
          modifiedDate: action.date,
          location: action.currentLocation,
          mediaFiles: action.mediaFiles,
          tags: action.tags,
        ));
    _sortNotes(state, notes);
  }
  return state.rebuild(
    (b) => b..notes = notes,
  );
}

NotesState _noteDeletedAction(NotesState state, NoteDeletedAction action) {
  var notes = state.notes.toList();
  notes.removeWhere((element) => element.id == action.noteId);
  return state.rebuild(
    (b) => b..notes = notes,
  );
}

NotesState _deviceDataClearedAction(NotesState state, DeviceDataClearedAction action) {
  return NotesState.initial();
}
