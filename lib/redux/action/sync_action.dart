import 'common_action.dart';

abstract class ISyncAction {}

class LoadSyncStatusAction implements ILoggingAction, ISyncAction {
  @override
  String toLogString() {
    return 'Load Sync Status Action';
  }
}

class SyncStatusLoadedAction implements ILoggingAction, ISyncAction {
  final DateTime? lastSyncDate;
  final bool? hasSucceeded;

  SyncStatusLoadedAction({required this.lastSyncDate, required this.hasSucceeded});

  @override
  String toLogString() {
    return 'Sync Status Loaded Action';
  }
}

class StartSyncAction implements ILoggingAction, ISyncAction {
  final bool isManualSync;

  StartSyncAction({required this.isManualSync});

  @override
  String toLogString() {
    return 'Start Sync Action: manual = $isManualSync';
  }
}

class SyncStartedAction implements ILoggingAction, ISyncAction {
  @override
  String toLogString() {
    return 'Sync Started Action';
  }
}

class SyncFinishedAction implements ILoggingAction, ISyncAction {
  final DateTime? syncFinishedDate;
  final bool? hasSucceeded;

  SyncFinishedAction({required this.syncFinishedDate, required this.hasSucceeded});

  @override
  String toLogString() {
    return 'Sync Finished Action';
  }
}

class SyncProgressStatusAction implements ILoggingAction, ISyncAction {
  final String message;

  SyncProgressStatusAction({required this.message});

  @override
  String toLogString() {
    return 'Sync Progress Status Action, message: $message';
  }
}

class EncryptAllDataAction implements ILoggingAction, ISyncAction {
  @override
  String toLogString() {
    return 'Encrypt All Data Action';
  }
}
