import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/menu_item_action.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/redux/action/notebooks_action.dart';
import 'package:daymemory/redux/state/edit_notebook_state/edit_notebook_state.dart';
import 'package:daymemory/redux/state/notebooks_state/notebooks_state.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_notebook_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class NotebookMiddleware implements MiddlewareClass<AppState> {
  final INotebookService notebookService;
  final IDialogService dialogService;
  final IPermissionService permissionService;
  final IContextService contextService;
  final ISettingsService settingsService;

  AppLocalizations? get _locale => contextService.locale;

  NotebookMiddleware({
    required this.notebookService,
    required this.dialogService,
    required this.permissionService,
    required this.contextService,
    required this.settingsService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is SaveNotebookAction) {
      await _saveNotebook(action, store.state.editNotebookState, store.dispatch);
    } else if (action is CreateNotebookAction) {
      await _createNotebook(action, store.state.editNotebookState, store.dispatch);
    } else if (action is DeleteNotebookAction) {
      await _deleteNotebook(action, store.state.notebooksState, store.dispatch);
    } else if (action is ShowNotebookInReviewAction) {
      await _showNotebookInReview(action, store.state.notebooksState, store.dispatch);
    }
  }

  Future _saveNotebook(SaveNotebookAction action, EditNotebookState state, Function(dynamic action) dispatch) async {
    dispatch(NotebookSavingAction(isSaving: true));
    var result = await notebookService.update(
      state.notebookId!,
      state.title,
      DateTime.now().toUtc(),
      state.orderRank,
      state.showInReview,
      true,
      state.sortingType,
    );
    dispatch(NotebookUpdatedAction(notebookId: result.id, title: result.title, sortingType: state.sortingType));
    dispatch(NotebookSavingAction(isSaving: false));
    dispatch(LoadNotebooksAction());
    dispatch(PopBackStackAction());

    dispatch(DelayedAction(nextAction: LoadNotesAction(notebookId: state.notebookId!), delay: 500));
  }

  Future _createNotebook(CreateNotebookAction action, EditNotebookState state, Function(dynamic action) dispatch) async {
    dispatch(NotebookSavingAction(isSaving: true));
    var result = await notebookService.create(
      const Uuid().v4(),
      state.title,
      DateTime.now().toUtc(),
      state.orderRank,
      state.showInReview,
      true,
      state.sortingType,
    );
    dispatch(NotebookSavingAction(isSaving: false));
    dispatch(NotebookCreatedAction(
      notebookId: result.id,
      title: result.title,
    ));

    dispatch(SelectMenuItemAction(itemId: result.id, title: result.title, nextAction: LoadNotesAction(notebookId: result.id)));
    dispatch(LoadNotebooksAction());
    dispatch(PopBackStackAction());
  }

  Future<void> _deleteNotebook(DeleteNotebookAction action, NotebooksState state, Function(dynamic action) dispatch) async {
    dispatch(
      dialogService.confirmDeletingDialogAction(
        dispatch,
        deleteCommand: () async {
          await notebookService.markNotebookAsDeleted(action.notebookId);
          dispatch(NotebookDeletedAction(notebookId: action.notebookId));

          var notebook = state.items.firstWhereOrNull((element) => element.id != action.notebookId);

          var settings = await settingsService.getSettings();
          settings.defaultNotebookId = notebook?.id;
          await settingsService.setSettings(settings);

          dispatch(SelectMenuItemAction(itemId: notebook?.id, title: notebook?.title, nextAction: LoadNotesAction(notebookId: notebook?.id)));
          dispatch(PopBackStackAction());
        },
        title: _locale!.notebook_delete_title,
        message: _locale!.notebook_delete_message,
      ),
    );
  }

  Future<void> _showNotebookInReview(ShowNotebookInReviewAction action, NotebooksState state, Function(dynamic action) dispatch) async {
    var notebook = await notebookService.fetchNotebook(action.notebookId);
    if (notebook == null) {
      return;
    }
    await notebookService.update(
      action.notebookId,
      notebook.title,
      DateTime.now().toUtc(),
      notebook.orderRank,
      action.enabled,
      true,
      notebook.sortingType,
    );

    dispatch(LoadNotebooksAction());
  }
}
