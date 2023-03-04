import 'package:built_value/built_value.dart';

part 'sync_state.g.dart';

abstract class SyncState implements Built<SyncState, SyncStateBuilder> {
  bool get isSyncing;

  DateTime? get lastSyncDate;

  bool? get hasLastSyncSucceeded;

  String? get syncStatus;

  SyncState._();

  factory SyncState([void Function(SyncStateBuilder) updates]) = _$SyncState;

  factory SyncState.initial() => SyncState((b) => b
    ..isSyncing = false
    ..hasLastSyncSucceeded = null
    ..syncStatus = null
    ..lastSyncDate = null);
}
