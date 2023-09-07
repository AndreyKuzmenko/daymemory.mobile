import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/redux/state/edit_notebook_state/edit_notebook_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<EditNotebookState> get notebookReducer {
  return combineReducers<EditNotebookState>([
    TypedReducer(_initNotebookAction),
    TypedReducer(_notebookSavingAction),
    TypedReducer(_changeNotebookSortingAction),
    TypedReducer(_changeNotebookTitleAction),
  ]);
}

EditNotebookState _initNotebookAction(EditNotebookState state, InitNotebookAction action) {
  return state.rebuild((b) => b
    ..notebookId = action.notebookId
    ..orderRank = action.orderRank
    ..showInReview = action.showInReview
    ..sortingType = action.sortingType
    ..title = action.title);
}

EditNotebookState _notebookSavingAction(EditNotebookState state, NotebookSavingAction action) {
  return state.rebuild((b) => b..isSaving = action.isSaving);
}

EditNotebookState _changeNotebookSortingAction(EditNotebookState state, ChangeNotebookSortingAction action) {
  return state.rebuild((b) => b..sortingType = action.sortingType);
}

EditNotebookState _changeNotebookTitleAction(EditNotebookState state, ChangeNotebookTitleAction action) {
  return state.rebuild((b) => b..title = action.title);
}
