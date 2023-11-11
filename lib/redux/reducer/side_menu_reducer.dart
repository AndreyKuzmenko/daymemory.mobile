import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/side_menu_action.dart';
import 'package:daymemory/redux/state/side_menu_state/side_menu_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<SideMenuState> get sideMenuReducer {
  return combineReducers<SideMenuState>([TypedReducer(_sideMenuItemChanged).call]);
}

SideMenuState _sideMenuItemChanged(SideMenuState state, SideMenuChangeItemAction action) {
  return state.rebuild(
    (b) => b..selectedTag = action.tag,
  );
}
