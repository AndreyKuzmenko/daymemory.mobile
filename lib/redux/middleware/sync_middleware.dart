import 'package:daymemory/common/exceptions/decryption_key_absent_exception.dart';
import 'package:daymemory/common/exceptions/decryption_key_invalid_exception.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/data/sync/sync_note_item_dto.dart';
import 'package:daymemory/data/sync/sync_notebook_dto.dart';
import 'package:daymemory/data/sync/sync_tag_item_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/notebooks_action.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/action/sync_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_service/device_service.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/encrypt_service/encrypt_service.dart';
import 'package:daymemory/services/logging/config_service.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/network/errors/duplicate_item_exception.dart';
import 'package:daymemory/services/network/errors/token_refresh_exception.dart';
import 'package:daymemory/services/network/network_file_service.dart';
import 'package:daymemory/services/network/network_note_service.dart';
import 'package:daymemory/services/network/network_notebook_service.dart';
import 'package:daymemory/services/network/network_sync_service.dart';
import 'package:daymemory/services/network/network_tag_service.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/storage/file-storage/file_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_note_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_notebook_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_tag_service.dart';
import 'package:daymemory/services/store/store_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart' show MiddlewareClass, NextDispatcher, Store;
// ignore: depend_on_referenced_packages
import 'package:async/async.dart';
import '../../services/settings_service/settings_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SyncMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;
  final IEncryptService encryptService;
  final INetworkSyncService httpSyncService;
  final INoteService noteService;
  final INetworkFileService fileNetworkService;
  final INetworkTagService tagNetworkService;
  final INetworkNoteService noteNetworkService;
  final INetworkNotebookService notebookNetworkService;
  final IDialogService dialogService;
  final IFileService fileService;
  final ITagService tagService;
  final INotebookService notebookService;
  late RestartableTimer _timer;
  final IConfigService configService;
  final ILoggingService loggingService;
  final IDeviceService deviceService;
  final IContextService contextService;

  AppLocalizations? get _locale => contextService.locale;

  SyncMiddleware(
      {required this.settingsService,
      required this.encryptService,
      required this.httpSyncService,
      required this.noteService,
      required this.noteNetworkService,
      required this.notebookNetworkService,
      required this.dialogService,
      required this.fileNetworkService,
      required this.tagNetworkService,
      required this.tagService,
      required this.notebookService,
      required this.configService,
      required this.loggingService,
      required this.deviceService,
      required this.contextService,
      required this.fileService}) {
    final duration = configService.settings.syncDataIntervalSeconds;
    _timer = RestartableTimer(
      Duration(seconds: duration),
      () async {
        var store = ServiceLocator.getIt<IStoreService>().store;
        store.dispatch(StartSyncAction(isManualSync: false));
        _timer.reset();
      },
    );
  }

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    if (action is NoteUpdatedAction || action is NoteCreatedAction || action is NoteDeletedAction) {
      store.dispatch(StartSyncAction(isManualSync: false));
    } else if (action is LoadSyncStatusAction) {
      var settings = await settingsService.getSettings();
      var lastSyncDate = settings.lastSyncDate;
      var hasSucceeded = settings.lastSyncStatus;
      store.dispatch(SyncStatusLoadedAction(lastSyncDate: lastSyncDate, hasSucceeded: hasSucceeded));
    } else if (action is StartSyncAction && store.state.settingsState.isSyncEnabled && !store.state.syncState.isSyncing && store.state.accountState.isAuthenticated) {
      await startSyncProcess(store, action.isManualSync);
    } else if (action is EncryptAllDataAction) {
      await _encryptAllData(store);
    }
  }

  Future startSyncProcess(Store<AppState> store, bool isManualSync) async {
    var settings = await settingsService.getSettings();
    var lastSyncDate = settings.lastSyncDate;
    store.dispatch(SyncStartedAction());
    if (isManualSync) {
      deviceService.enableWakelock();
    }
    try {
      await _startSync(store, lastSyncDate);
    } on DecryptionKeyAbsentException catch (e) {
      _handleDecryptionKeyAbsent(e, store, lastSyncDate);
    } on TokenRefreshException catch (e) {
      _handleTokenRefresh(e, store, lastSyncDate);
    } on InvalidDecryptionKeyException catch (e) {
      _handleInValidDecryptionKey(e, store, lastSyncDate);
    } catch (e) {
      loggingService.logError(e);
      store.dispatch(SyncFinishedAction(syncFinishedDate: lastSyncDate, hasSucceeded: false));
    } finally {
      if (isManualSync) {
        deviceService.disableWakelock();
      }
    }
  }

  void _handleDecryptionKeyAbsent(DecryptionKeyAbsentException e, Store<AppState> store, DateTime? lastSyncDate) {
    loggingService.logError(e);
    store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(
      store.dispatch,
      errorTitle: _locale!.settings_encryption_key_absent_error_title,
      errorMessage: _locale!.settings_encryption_key_absent_error_message,
    ));
    store.dispatch(SettingsSyncStateChangedAction(isEnabled: false));
    store.dispatch(SyncFinishedAction(syncFinishedDate: lastSyncDate, hasSucceeded: false));
  }

  void _handleTokenRefresh(TokenRefreshException e, Store<AppState> store, DateTime? lastSyncDate) {
    loggingService.logError(e);
    store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(
      store.dispatch,
      errorTitle: _locale!.settings_token_expired_error_title,
      errorMessage: _locale!.settings_token_expired_error_message,
    ));
    store.dispatch(LogoutAction());
    store.dispatch(SettingsSyncStateChangedAction(isEnabled: false));
    store.dispatch(SyncFinishedAction(syncFinishedDate: lastSyncDate, hasSucceeded: false));
  }

  void _handleInValidDecryptionKey(InvalidDecryptionKeyException e, Store<AppState> store, DateTime? lastSyncDate) {
    loggingService.logError(e);
    store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(
      store.dispatch,
      errorTitle: _locale!.settings_encryption_key_invalid_error_title,
      errorMessage: _locale!.settings_encryption_key_invalid_error_message,
    ));
    store.dispatch(SettingsSyncStateChangedAction(isEnabled: false));
    store.dispatch(SyncFinishedAction(syncFinishedDate: lastSyncDate, hasSucceeded: false));
  }

  Future _startSync(Store<AppState> store, DateTime? lastSyncDate) async {
    var isFirstSync = lastSyncDate == null;
    //extend to additional timeframe
    var syncStartedDate = DateTime.now().add(const Duration(seconds: -5)).toUtc();

    store.dispatch(SyncProgressStatusAction(message: _locale!.sync_loading_data));
    await _loadNotebooksfromServer(store, lastSyncDate);
    await _loadNotesfromServer(store, lastSyncDate);
    await _loadTagsfromServer(store, lastSyncDate);

    store.dispatch(SyncProgressStatusAction(message: _locale!.sync_uploading_data));
    await _uploadNotebooksToServer(store);
    await _uploadNotesToServer(store);
    await _uploadTagsToServer();

    var settings = await settingsService.getSettings();
    settings.lastSyncDate = syncStartedDate;
    await settingsService.setSettings(settings);

    store.dispatch(SyncFinishedAction(syncFinishedDate: syncStartedDate, hasSucceeded: true));

    if (isFirstSync) {
      store.dispatch(const LoadNotesAction(notebookId: null));
    }

    store.dispatch(LoadNotebooksAction());
  }

  Future _uploadNotesToServer(Store<AppState> store) async {
    var isEncryptionEnabled = store.state.settingsState.encryptionKey != null && store.state.settingsState.encryptionKey!.isNotEmpty;
    //upload data
    var newNotes = await noteService.fetchNewNotes();
    for (var item in newNotes) {
      if (item.mediaFiles.isNotEmpty) {
        for (var file in item.mediaFiles) {
          var filePath = await fileService.getFilePath(file.id, file.name, true);
          await fileNetworkService.uploadMediaFile(file.id, filePath, file.width, file.height, file.fileType);
        }
      }
      var fileIds = item.mediaFiles.map((e) => e.id).toList();
      try {
        var note = await noteNetworkService.create(
          item.id,
          item.notebookId,
          await _encrypt(store.state.settingsState.encryptionKey, item.text),
          item.date.toUtc(),
          fileIds,
          item.location,
          isEncryptionEnabled,
        );
        await noteService.resetIsChangedFlag(item.id, note.modifiedDate);
      } on DuplicateItemException {
        var note = await noteNetworkService.update(
          item.id,
          item.notebookId,
          await _encrypt(store.state.settingsState.encryptionKey, item.text),
          item.date.toUtc(),
          fileIds,
          item.location,
          isEncryptionEnabled,
        );
        await noteService.resetIsChangedFlag(item.id, note.modifiedDate);
      }
    }
    var modifiedNotes = await noteService.fetchModifiedNotes();
    for (var item in modifiedNotes) {
      if (item.mediaFiles.isNotEmpty) {
        for (var file in item.mediaFiles) {
          var fileExist = await fileNetworkService.checkIfFileExists(file.id);
          if (!fileExist) {
            var filePath = await fileService.getFilePath(file.id, file.name, true);
            await fileNetworkService.uploadMediaFile(file.id, filePath, file.width, file.height, file.fileType);
          }
        }
      }
      var fileIds = item.mediaFiles.map((e) => e.id).toList();
      var note = await noteNetworkService.update(
        item.id,
        item.notebookId,
        await _encrypt(store.state.settingsState.encryptionKey, item.text),
        item.date.toUtc(),
        fileIds,
        item.location,
        isEncryptionEnabled,
      );
      await noteService.resetIsChangedFlag(item.id, note.modifiedDate);
    }
    var deletedNotes = await noteService.fetchDeletedNotes();
    for (var note in deletedNotes) {
      await noteNetworkService.delete(note.id);
      await noteService.deleteNote(note.id);
    }
  }

  Future _uploadTagsToServer() async {
    var newTags = await tagService.fetchNewTags();
    for (var item in newTags) {
      try {
        var tag = await tagNetworkService.create(item.id, item.text, item.orderRank);
        await tagService.resetIsChangedFlag(item.id, tag.modifiedDate);
      } on DuplicateItemException {
        var tag = await tagNetworkService.update(item.id, item.text, item.orderRank);
        await tagService.resetIsChangedFlag(item.id, tag.modifiedDate);
      }
    }
    var modifieTags = await tagService.fetchModifiedTags();
    for (var item in modifieTags) {
      var tag = await tagNetworkService.update(item.id, item.text, item.orderRank);
      await tagService.resetIsChangedFlag(item.id, tag.modifiedDate);
    }
    var deletedTags = await tagService.fetchDeletedTags();
    for (var item in deletedTags) {
      await tagNetworkService.delete(item.id);
      await tagService.deleteTag(item.id);
    }
  }

  Future _uploadNotebooksToServer(Store<AppState> store) async {
    var newItems = await notebookService.fetchNewNotebooks();
    var isEncryptionEnabled = store.state.settingsState.encryptionKey != null && store.state.settingsState.encryptionKey!.isNotEmpty;
    for (var item in newItems) {
      try {
        var notebook = await notebookNetworkService.create(
          item.id,
          await _encrypt(store.state.settingsState.encryptionKey, item.title),
          item.orderRank,
          item.showInReview,
          item.sortingType,
          isEncryptionEnabled,
        );
        await notebookService.resetIsChangedFlag(item.id, notebook.modifiedDate);
      } on DuplicateItemException {
        var notebook = await notebookNetworkService.update(
          item.id,
          await _encrypt(store.state.settingsState.encryptionKey, item.title),
          item.orderRank,
          item.showInReview,
          item.sortingType,
          isEncryptionEnabled,
        );
        await notebookService.resetIsChangedFlag(item.id, notebook.modifiedDate);
      }
    }
    var modifiedItems = await notebookService.fetchModifiedNotebooks();
    for (var item in modifiedItems) {
      var notebook = await notebookNetworkService.update(
        item.id,
        await _encrypt(store.state.settingsState.encryptionKey, item.title),
        item.orderRank,
        item.showInReview,
        item.sortingType,
        isEncryptionEnabled,
      );
      await notebookService.resetIsChangedFlag(item.id, notebook.modifiedDate);
    }
    var deletedItems = await notebookService.fetchDeletedNotebooks();
    for (var item in deletedItems) {
      await notebookNetworkService.delete(item.id);
      await notebookService.delete(item.id);
    }
  }

  Future _loadNotesfromServer(Store<AppState> store, DateTime? lastSyncDate) async {
    var paging = 20;
    var items = <SyncNoteItemDto>[];

    var lastModifiedDate = lastSyncDate?.millisecondsSinceEpoch;
    do {
      var result = await httpSyncService.fetchNotes(lastModifiedDate, paging);
      store.dispatch(SyncProgressStatusAction(message: _locale!.sync_loading_notes(result.count)));
      items = result.items;
      var i = 0;
      for (var syncItem in items) {
        store.dispatch(SyncProgressStatusAction(message: _locale!.sync_loading_notes(result.count - i++)));
        if (syncItem.status == 1) {
          var dbItem = await noteService.fetchNote(syncItem.id);

          if (dbItem == null) {
            var createdItem = await noteService.createNote(
              syncItem.id,
              syncItem.item!.notebookId,
              await _decrypt(store.state.settingsState.encryptionKey, syncItem.item!.text, syncItem.item!.isEncrypted!),
              syncItem.item!.date,
              syncItem.item!.modifiedDate,
              syncItem.item!.mediaFiles,
              syncItem.item!.location,
              false,
            );

            //if note is encrypted and encryption is enabled, mark it as changed
            if (syncItem.item!.isEncrypted != null && !syncItem.item!.isEncrypted! && store.state.accountState.isEncryptionEnabled) {
              await noteService.markNoteAsChanged(syncItem.id);
            }

            store.dispatch(NoteCreatedAction(
              noteId: createdItem.id,
              notebookId: createdItem.notebookId,
              text: createdItem.text,
              mediaFiles: createdItem.mediaFiles,
              currentLocation: createdItem.location,
              date: createdItem.date,
              modifiedDate: createdItem.modifiedDate,
            ));
            //update notebooks' counters
            store.dispatch(LoadNotebooksAction());
          } else if (syncItem.item!.modifiedDate.difference(dbItem.modifiedDate).inSeconds > 0) {
            var updatedNote = await noteService.updateNote(
              syncItem.id,
              syncItem.item!.notebookId,
              await _decrypt(store.state.settingsState.encryptionKey, syncItem.item!.text, syncItem.item!.isEncrypted!),
              syncItem.item!.date,
              syncItem.item!.modifiedDate,
              syncItem.item!.mediaFiles,
              syncItem.item!.location,
              false,
            );

            //if note is encrypted and encryption is enabled, mark it as changed
            if (syncItem.item!.isEncrypted != null && !syncItem.item!.isEncrypted! && store.state.accountState.isEncryptionEnabled) {
              await noteService.markNoteAsChanged(syncItem.id);
            }

            store.dispatch(NoteUpdatedAction(
              noteId: updatedNote.id,
              notebookId: updatedNote.notebookId,
              text: updatedNote.text,
              date: updatedNote.date,
              mediaFiles: updatedNote.mediaFiles,
              currentLocation: updatedNote.location,
              modifiedDate: updatedNote.modifiedDate,
            ));
          }
        } else if (syncItem.status == 2) {
          await noteService.deleteNote(syncItem.id);
          store.dispatch(NoteDeletedAction(noteId: syncItem.id));
        }
      }
      if (items.isNotEmpty) {
        lastModifiedDate = items.last.modifiedDate.millisecondsSinceEpoch;
      }
    } while (items.length == paging);
  }

  Future _loadTagsfromServer(Store<AppState> store, DateTime? lastSyncDate) async {
    var items = <SyncTagItemDto>[];

    var lastModifiedDate = lastSyncDate?.millisecondsSinceEpoch;
    var result = await httpSyncService.fetchTags(lastModifiedDate);
    store.dispatch(SyncProgressStatusAction(message: _locale!.sync_loading_tags));
    items = result.items;
    for (var syncItem in items) {
      if (syncItem.status == 1) {
        var dbItem = await tagService.fetchTag(syncItem.id);
        if (dbItem == null) {
          await tagService.createTag(
            syncItem.id,
            syncItem.item!.text,
            syncItem.item!.orderRank,
            syncItem.item!.modifiedDate,
            false,
          );
        } else if (syncItem.item!.modifiedDate.difference(dbItem.modifiedDate).inSeconds > 0) {
          await tagService.updateTag(
            syncItem.id,
            syncItem.item!.text,
            syncItem.item!.orderRank,
            syncItem.item!.modifiedDate,
            false,
          );
        }
      } else if (syncItem.status == 2) {
        await tagService.deleteTag(syncItem.id);
      }
    }
    if (items.isNotEmpty) {
      store.dispatch(LoadTagsAction());
    }
  }

  Future _loadNotebooksfromServer(Store<AppState> store, DateTime? lastSyncDate) async {
    var items = <SyncNotebookDto>[];

    var lastModifiedDate = lastSyncDate?.millisecondsSinceEpoch;
    var result = await httpSyncService.fetchNootebooks(lastModifiedDate);
    store.dispatch(SyncProgressStatusAction(message: _locale!.sync_loading_notebooks));
    items = result.items;
    for (var syncItem in items) {
      if (syncItem.status == 1) {
        var dbItem = await notebookService.fetchNotebook(syncItem.id);
        if (dbItem == null) {
          await notebookService.create(
            syncItem.id,
            await _decrypt(store.state.settingsState.encryptionKey, syncItem.item!.title, syncItem.item!.isEncrypted!),
            syncItem.item!.modifiedDate,
            syncItem.item!.orderRank,
            syncItem.item!.showInReview,
            false,
            syncItem.item!.sortingType,
          );
          //if notebook is encrypted and encryption is enabled, mark it as changed
          if (syncItem.item!.isEncrypted != null && !syncItem.item!.isEncrypted! && store.state.accountState.isEncryptionEnabled) {
            await notebookService.markNotebookAsChanged(syncItem.id);
          }
        } else if (syncItem.item!.modifiedDate.difference(dbItem.modifiedDate).inSeconds > 0) {
          await notebookService.update(
            syncItem.id,
            await _decrypt(store.state.settingsState.encryptionKey, syncItem.item!.title, syncItem.item!.isEncrypted!),
            syncItem.item!.modifiedDate,
            syncItem.item!.orderRank,
            syncItem.item!.showInReview,
            false,
            syncItem.item!.sortingType,
          );
          //if notebook is encrypted and encryption is enabled, mark it as changed
          if (syncItem.item!.isEncrypted != null && !syncItem.item!.isEncrypted! && store.state.accountState.isEncryptionEnabled) {
            await notebookService.markNotebookAsChanged(syncItem.id);
          }
        }
      } else if (syncItem.status == 2) {
        await notebookService.delete(syncItem.id);
      }
    }
    if (items.isNotEmpty) {
      store.dispatch(LoadNotebooksAction());
    }
  }

  Future<String> _encrypt(String? encryptionKey, String text) async {
    if (encryptionKey == null || encryptionKey.isEmpty) {
      return text;
    }

    if (text.isEmpty || text.trim().isEmpty) {
      return text;
    }

    var encryptedText = encryptService.encrypt(encryptionKey, text);
    return encryptedText;
  }

  Future<String> _decrypt(String? encryptionKey, String text, bool isEncrypted) async {
    if (!isEncrypted || text.isEmpty || text.trim().isEmpty) {
      return text;
    }

    if (encryptionKey == null || encryptionKey.isEmpty) {
      throw DecryptionKeyAbsentException(message: "Encryption key is not configured");
    }

    try {
      var decryptedText = encryptService.decrypt(encryptionKey, text);
      return decryptedText;
    } catch (e) {
      throw InvalidDecryptionKeyException(message: e.toString());
    }
  }

  Future _encryptAllData(Store<AppState> store) async {
    var notebooks = await notebookService.fetchNotebooks();
    for (var notebook in notebooks) {
      await notebookService.markNotebookAsChanged(notebook.id);
    }

    int? lastItemDateTime;
    List<NoteDto> notes = [];
    do {
      notes = await noteService.fetchNotes(lastItemDateTime, 50, null, SortingType.byModifiedDate);
      for (var note in notes) {
        await noteService.markNoteAsChanged(note.id);
      }
      if (notes.isNotEmpty) {
        lastItemDateTime = notes.last.modifiedDate.millisecondsSinceEpoch;
      }
    } while (notes.length == 50);
  }
}
