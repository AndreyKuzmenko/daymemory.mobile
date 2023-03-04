import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_tag_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class TagsMiddleware implements MiddlewareClass<AppState> {
  final ITagService tagService;
  final IDialogService dialogService;
  final IPermissionService permissionService;

  TagsMiddleware({
    required this.tagService,
    required this.dialogService,
    required this.permissionService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is LoadTagsAction) {
      var tags = await tagService.fetchTags();
      store.dispatch(TagsLoadedAction(tags: tags));
      store.dispatch(action.nextAction);
    }
  }
}
