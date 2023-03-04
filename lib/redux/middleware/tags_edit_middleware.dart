import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/tags_edit_action.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_tag_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class TagsEditMiddleware implements MiddlewareClass<AppState> {
  final ITagService tagService;
  final IDialogService dialogService;
  final IPermissionService permissionService;

  TagsEditMiddleware({
    required this.tagService,
    required this.dialogService,
    required this.permissionService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is LoadEditTagsAction) {
      var tags = await tagService.fetchTags();
      store.dispatch(TagsEditLoadedAction(tags: tags));
    } else if (action is SaveTagsAction) {
      await _saveTags(store);
    }
  }

  Future _saveTags(Store<AppState> store) async {
    store.dispatch(TagsSavingAction(isSaving: true));

    var prevTags = store.state.tagsState.tags;
    var deletedTags = prevTags.where((element) => !store.state.editTagsState.tags.any((p) => p.id == element.id));

    int i = 0;
    for (var tag in store.state.editTagsState.tags) {
      var item = await tagService.fetchTag(tag.id);
      if (item == null) {
        await tagService.createTag(tag.id, tag.text, i, DateTime.now().toUtc(), true);
      } else {
        if (tag.orderRank != i || tag.text != item.text) {
          await tagService.updateTag(tag.id, tag.text, i, DateTime.now().toUtc(), true);
        }
      }
      i++;
    }
    for (var element in deletedTags) {
      await tagService.markTagAsDeleted(element.id);
    }

    store.dispatch(TagsSavingAction(isSaving: false));
    store.dispatch(LoadTagsAction());
    store.dispatch(PopBackStackAction());
  }
}
