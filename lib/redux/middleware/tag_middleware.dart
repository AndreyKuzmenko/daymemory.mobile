import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/tag_action.dart';
import 'package:daymemory/redux/state/edit_tag_state/edit_tag_state.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_tag_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: depend_on_referenced_packages

class TagMiddleware implements MiddlewareClass<AppState> {
  final ITagService tagService;
  final IDialogService dialogService;
  final IPermissionService permissionService;
  final IContextService contextService;
  final ISettingsService settingsService;

  AppLocalizations? get _locale => contextService.locale;

  TagMiddleware({
    required this.tagService,
    required this.dialogService,
    required this.permissionService,
    required this.contextService,
    required this.settingsService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is CreateTagAction) {
      await _createTag(action, store.state.editTagState, store.dispatch);
    }
  }

  Future _createTag(CreateTagAction action, EditTagState state, Function(dynamic action) dispatch) async {
    dispatch(TagSavingAction(isSaving: true));
    var result = await tagService.createTag(
      const Uuid().v4(),
      state.title,
      state.orderRank,
      DateTime.now().toUtc(),
      true,
    );
    dispatch(TagSavingAction(isSaving: false));
    dispatch(TagCreatedAction(
      tagId: result.id,
      title: result.text,
    ));

    dispatch(LoadTagsAction());
    dispatch(PopBackStackAction());
  }
}
