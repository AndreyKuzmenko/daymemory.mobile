import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/redux/action/notebooks_action.dart';
import 'package:daymemory/redux/state/notebooks_state/notebooks_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<NotebooksState> get notebooksReducer {
  return combineReducers<NotebooksState>([
    TypedReducer(_notebooksLoadedAction),
    TypedReducer(_notebookDeletedAction),
  ]);
}

NotebooksState _notebooksLoadedAction(NotebooksState state, NotebooksLoadedAction action) {
  return state.rebuild((b) => b..items = action.items);
}

NotebooksState _notebookDeletedAction(NotebooksState state, NotebookDeletedAction action) {
  return state.rebuild((b) => b..items!.removeWhere((element) => element.id == action.notebookId));
}
