import 'package:daymemory/redux/action/tag_action.dart';
import 'package:daymemory/redux/state/edit_tag_state/edit_tag_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<EditTagState> get tagReducer {
  return combineReducers<EditTagState>([
    TypedReducer(_initTagAction).call,
    TypedReducer(_tagSavingAction).call,
    TypedReducer(_changeTagTitleAction).call,
  ]);
}

EditTagState _initTagAction(EditTagState state, InitTagAction action) {
  return state.rebuild((b) => b
    ..tagId = action.tagId
    ..orderRank = action.orderRank
    ..title = action.title);
}

EditTagState _tagSavingAction(EditTagState state, TagSavingAction action) {
  return state.rebuild((b) => b..isSaving = action.isSaving);
}

EditTagState _changeTagTitleAction(EditTagState state, ChangeTagTitleAction action) {
  return state.rebuild((b) => b..title = action.title);
}
