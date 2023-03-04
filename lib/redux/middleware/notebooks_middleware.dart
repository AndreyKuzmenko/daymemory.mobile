import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/redux/action/notebooks_action.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_notebook_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class NotebooksMiddleware implements MiddlewareClass<AppState> {
  final INotebookService notebookService;
  final IDialogService dialogService;
  final IPermissionService permissionService;
  final ISettingsService settingsService;

  NotebooksMiddleware({
    required this.notebookService,
    required this.dialogService,
    required this.permissionService,
    required this.settingsService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is LoadNotebooksAction) {
      var items = await notebookService.fetchNotebooks();
      store.dispatch(NotebooksLoadedAction(items: items));

      if (store.state.selectedNotebookState.notebookId == null) {
        var settings = await settingsService.getSettings();
        var defaultNotebookId = settings.defaultNotebookId;
        if (items.isNotEmpty) {
          var defNotebook = items.first;
          if (defaultNotebookId != null) {
            var notebook = items.firstWhereOrNull((element) => element.id == defaultNotebookId);
            if (notebook != null) {
              defNotebook = notebook;
            }
          }
          store.dispatch(SelectDefaultNotebookAction(notebook: defNotebook));
        }
      }
      store.dispatch(action.nextAction);
    } else if (action is SelectDefaultNotebookAction) {
      var settings = await settingsService.getSettings();
      settings.defaultNotebookId = action.notebook?.id;
      await settingsService.setSettings(settings);

      store.dispatch(DefaultNotebookSelectedAction(notebook: action.notebook));
      if (action.nextAction != null) {
        store.dispatch(action.nextAction);
      }
    } else if (action is ReorderNotebooksAction) {
      var items = store.state.notebooksState.items.toList();
      var item = items[action.start];
      items.removeAt(action.start);
      items.insert(action.current > action.start ? action.current - 1 : action.current, item);

      int i = 0;
      for (var notebook in items) {
        await notebookService.update(
          notebook.id,
          notebook.title,
          DateTime.now().toUtc(),
          i,
          notebook.showInReview,
          true,
          notebook.sortingType,
        );
        i++;
      }

      store.dispatch(LoadNotebooksAction(nextAction: null));
    }
  }
}
