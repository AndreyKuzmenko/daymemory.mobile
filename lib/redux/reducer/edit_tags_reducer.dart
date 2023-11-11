import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/redux/action/tags_edit_action.dart';
import 'package:daymemory/redux/state/states.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';

Reducer<EditTagsState> get editTagsReducer {
  return combineReducers<EditTagsState>([
    TypedReducer(_editTagsIsLoadingAction).call,
    TypedReducer(_tagsSavingAction).call,
    TypedReducer(_tagsEditLoadedAction).call,
    TypedReducer(_reorderTagsAction).call,
    TypedReducer(_changeTagAction).call,
    TypedReducer(_addTagAction).call,
    TypedReducer(_removeTagAction).call,
  ]);
}

EditTagsState _editTagsIsLoadingAction(EditTagsState state, EditTagsIsLoadingAction action) {
  return state.rebuild(
    (b) => b..isLoading = action.isLoading,
  );
}

EditTagsState _tagsSavingAction(EditTagsState state, TagsSavingAction action) {
  return state.rebuild(
    (b) => b..isSaving = action.isSaving,
  );
}

EditTagsState _tagsEditLoadedAction(EditTagsState state, TagsEditLoadedAction action) {
  return state.rebuild(
    (b) => b..tags = action.tags,
  );
}

EditTagsState _addTagAction(EditTagsState state, AddTagAction action) {
  var tags = state.tags.toList();
  tags.add(TagDto(id: const Uuid().v4(), text: "", orderRank: tags.length, modifiedDate: DateTime.now().toUtc()));
  return state.rebuild((b) => b..tags = tags);
}

EditTagsState _changeTagAction(EditTagsState state, ChangeTagAction action) {
  var item = state.tags.firstWhere((element) => element.id == action.tagId);
  item.text = action.text;

  return state.rebuild(
    (b) => b..tags = state.tags,
  );
}

EditTagsState _removeTagAction(EditTagsState state, RemoveTagAction action) {
  return state.rebuild((b) => b..tags!.removeWhere((element) => element.id == action.tagId));
}

EditTagsState _reorderTagsAction(EditTagsState state, ReorderTagsAction action) {
  var tags = state.tags.toList();
  var item = tags[action.start];
  tags.removeAt(action.start);
  tags.insert(action.current > action.start ? action.current - 1 : action.current, item);

  return state.rebuild(
    (b) => b..tags = tags,
  );
}
