import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/redux/state/selected_notebook_state/selected_notebook_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<SelectedNotebookState> get selectedNotebookReducer {
  return combineReducers<SelectedNotebookState>([
    TypedReducer(_selectNotebookAction),
    TypedReducer(_notebookUpdatedAction),
  ]);
}

SelectedNotebookState _selectNotebookAction(SelectedNotebookState state, DefaultNotebookSelectedAction action) {
  return state.rebuild((b) => b
    ..notebookId = action.notebook?.id
    ..orderRank = action.notebook?.orderRank ?? 0
    ..showInReview = action.notebook?.showInReview ?? false
    ..sortingType = action.notebook?.sortingType ?? SortingType.byCreatedDate
    ..notebookTitle = action.notebook?.title);
}

SelectedNotebookState _notebookUpdatedAction(SelectedNotebookState state, NotebookUpdatedAction action) {
  if (action.notebookId == state.notebookId) {
    return state.rebuild(
      (b) => b
        ..notebookTitle = action.title
        ..sortingType = action.sortingType,
    );
  }
  return state;
}
