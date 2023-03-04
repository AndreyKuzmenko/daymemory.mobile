import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/tags_state/tags_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<TagsState> get tagsReducer {
  return combineReducers<TagsState>([
    TypedReducer(_tagsLoadedAction),
  ]);
}

TagsState _tagsLoadedAction(TagsState state, TagsLoadedAction action) {
  return state.rebuild((b) => b..tags = action.tags);
}
