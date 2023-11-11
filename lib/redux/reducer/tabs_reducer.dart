import 'package:daymemory/redux/action/tabs_action.dart';
import 'package:daymemory/redux/state/tabs_state/tabs_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<TabsState> get tabsReducer {
  return combineReducers<TabsState>([
    TypedReducer(_selectTabAction).call,
    TypedReducer(_tabScrollAction).call,
  ]);
}

TabsState _selectTabAction(TabsState state, TabSelectedAction action) {
  return state.rebuild(
    (b) => b..selectTabIndex = action.selectedTabIndex,
  );
}

TabsState _tabScrollAction(TabsState state, TabScrollAction action) {
  return state.rebuild(
    (b) => b..isActiveTabClicked = action.isEnabled,
  );
}
