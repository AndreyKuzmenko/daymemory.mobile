import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/action/sync_action.dart';
import 'package:daymemory/redux/state/states.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<SyncState> get syncReducer {
  return combineReducers<SyncState>([
    TypedReducer(_syncStartedAction).call,
    TypedReducer(_syncFinishedAction).call,
    TypedReducer(_syncStatusLoadedAction).call,
    TypedReducer(_deviceDataClearedAction).call,
    TypedReducer(_syncProgressStatusAction).call,
  ]);
}

SyncState _syncStatusLoadedAction(SyncState state, SyncStatusLoadedAction action) {
  return state.rebuild((b) => b
    ..isSyncing = false
    ..hasLastSyncSucceeded = action.hasSucceeded
    ..lastSyncDate = action.lastSyncDate);
}

SyncState _syncStartedAction(SyncState state, SyncStartedAction action) {
  return state.rebuild((b) => b..isSyncing = true);
}

SyncState _syncFinishedAction(SyncState state, SyncFinishedAction action) {
  return state.rebuild(
    (b) => b
      ..isSyncing = false
      ..lastSyncDate = action.syncFinishedDate
      ..hasLastSyncSucceeded = action.hasSucceeded,
  );
}

SyncState _deviceDataClearedAction(SyncState state, DeviceDataClearedAction action) {
  return state.rebuild(
    (b) => b
      ..isSyncing = false
      ..lastSyncDate = null
      ..hasLastSyncSucceeded = null,
  );
}

SyncState _syncProgressStatusAction(SyncState state, SyncProgressStatusAction action) {
  return state.rebuild(
    (b) => b..syncStatus = action.message,
  );
}


//SyncStateAction