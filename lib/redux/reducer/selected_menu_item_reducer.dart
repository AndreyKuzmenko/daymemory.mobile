import 'package:daymemory/redux/action/menu_item_action.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/redux/state/selected_menu_item_state/selected_menu_item_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<SelectedMenuItemState> get selectedMenuItemReducer {
  return combineReducers<SelectedMenuItemState>([
    TypedReducer(_selectNotebookAction),
    TypedReducer(_notebookUpdatedAction),
  ]);
}

SelectedMenuItemState _selectNotebookAction(SelectedMenuItemState state, MenuItemSelectedAction action) {
  return state.rebuild(
    (b) => b
      ..itemId = action.itemId
      ..title = action.title,
  );
}

SelectedMenuItemState _notebookUpdatedAction(SelectedMenuItemState state, NotebookUpdatedAction action) {
  if (action.notebookId == state.itemId) {
    return state.rebuild(
      (b) => b..title = action.title,
    );
  }
  return state;
}
