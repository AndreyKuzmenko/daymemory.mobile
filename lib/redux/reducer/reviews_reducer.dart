import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/redux/action/note_action.dart';
import 'package:daymemory/redux/action/reviews_action.dart';
import 'package:daymemory/redux/state/reviews_state/reviews_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

Reducer<ReviewsState> get reviewsReducer {
  return combineReducers<ReviewsState>([
    TypedReducer(_reviewsLoadedAction),
    TypedReducer(_reviewsIsLoadingAction),
    TypedReducer(_noteUpdatedAction),
  ]);
}

ReviewsState _reviewsLoadedAction(ReviewsState state, ReviewsLoadedAction action) {
  return state.rebuild(
    (b) => b..items = action.items,
  );
}

ReviewsState _reviewsIsLoadingAction(ReviewsState state, ReviewsIsLoadingAction action) {
  return state.rebuild((b) => b..isLoading = action.isLoading);
}

ReviewsState _noteUpdatedAction(ReviewsState state, NoteUpdatedAction action) {
  var categories = state.items.toList();

  NoteDto? note;
  for (var category in categories) {
    note = category.notes.firstWhereOrNull((element) => element.id == action.noteId);
    if (note != null) {
      break;
    }
  }

  if (note != null) {
    note.text = action.text;
    note.notebookId = action.notebookId;
    note.mediaFiles = action.mediaFiles;
    note.date = action.date;
    note.modifiedDate = DateTime.now().toUtc();
    note.location = action.currentLocation;
  }

  return state.rebuild(
    (b) => b..items = categories,
  );
}
