import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/notes_action.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/device_service/device_service.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_note_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class NotesMiddleware implements MiddlewareClass<AppState> {
  final INoteService noteRepository;
  final IDialogService dialogService;
  final IPermissionService permissionService;
  final IDeviceService deviceFeedbackService;

  final _pageItemsCount = 20;

  NotesMiddleware({
    required this.noteRepository,
    required this.dialogService,
    required this.permissionService,
    required this.deviceFeedbackService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is LoadNotesAction || action is NotesRefreshAction) {
      await _loadNotes(
        action,
        store.dispatch,
        lastItemDateTime: null,
        notebokId: action.notebookId,
        isFirstLoad: action is! NotesRefreshAction,
        sortingType: SortingType.byCreatedDate,
        //sortingType: store.state.selectedNotebookState.sortingType,
      );
    } else if (action is LoadMoreNotesAction) {
      await _loadMoreNotes(
        action,
        store.dispatch,
        lastItemDateTime: store.state.notesState.lastItemDateTime,
        notebokId: action.notebookId,
        //sortingType: store.state.selectedNotebookState.sortingType,
        sortingType: SortingType.byCreatedDate,
      );
    }
  }

  Future<void> _loadNotes(
    action,
    Function(dynamic action) dispatch, {
    required int? lastItemDateTime,
    String? notebokId,
    required bool isFirstLoad,
    required SortingType sortingType,
  }) async {
    if (isFirstLoad) {
      dispatch(NotesIsLoadingAction(isLoading: true, notebookId: notebokId));
    }
    var notes = await noteRepository.fetchNotes(lastItemDateTime, _pageItemsCount, notebokId, sortingType);
    dispatch(NotesLoadedAction(notes, notes.length != _pageItemsCount, notebokId, sortingType));
    if (isFirstLoad) {
      dispatch(NotesIsLoadingAction(isLoading: false, notebookId: notebokId));
    }
  }

  Future<void> _loadMoreNotes(
    action,
    Function(dynamic action) dispatch, {
    required int? lastItemDateTime,
    String? notebokId,
    required SortingType sortingType,
  }) async {
    dispatch(NotesIsLoadingMoreAction(isLoadingMore: true, notebookId: notebokId));
    var notes = await noteRepository.fetchNotes(lastItemDateTime, _pageItemsCount, notebokId, sortingType);
    dispatch(NotesLoadedMoreAction(notes, notes.length != _pageItemsCount, notebokId, sortingType));
    dispatch(NotesIsLoadingMoreAction(isLoadingMore: false, notebookId: notebokId));
  }
}
