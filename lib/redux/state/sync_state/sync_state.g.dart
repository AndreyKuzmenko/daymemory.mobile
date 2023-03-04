// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SyncState extends SyncState {
  @override
  final bool isSyncing;
  @override
  final DateTime? lastSyncDate;
  @override
  final bool? hasLastSyncSucceeded;
  @override
  final String? syncStatus;

  factory _$SyncState([void Function(SyncStateBuilder)? updates]) =>
      (new SyncStateBuilder()..update(updates))._build();

  _$SyncState._(
      {required this.isSyncing,
      this.lastSyncDate,
      this.hasLastSyncSucceeded,
      this.syncStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isSyncing, r'SyncState', 'isSyncing');
  }

  @override
  SyncState rebuild(void Function(SyncStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncStateBuilder toBuilder() => new SyncStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncState &&
        isSyncing == other.isSyncing &&
        lastSyncDate == other.lastSyncDate &&
        hasLastSyncSucceeded == other.hasLastSyncSucceeded &&
        syncStatus == other.syncStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isSyncing.hashCode);
    _$hash = $jc(_$hash, lastSyncDate.hashCode);
    _$hash = $jc(_$hash, hasLastSyncSucceeded.hashCode);
    _$hash = $jc(_$hash, syncStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SyncState')
          ..add('isSyncing', isSyncing)
          ..add('lastSyncDate', lastSyncDate)
          ..add('hasLastSyncSucceeded', hasLastSyncSucceeded)
          ..add('syncStatus', syncStatus))
        .toString();
  }
}

class SyncStateBuilder implements Builder<SyncState, SyncStateBuilder> {
  _$SyncState? _$v;

  bool? _isSyncing;
  bool? get isSyncing => _$this._isSyncing;
  set isSyncing(bool? isSyncing) => _$this._isSyncing = isSyncing;

  DateTime? _lastSyncDate;
  DateTime? get lastSyncDate => _$this._lastSyncDate;
  set lastSyncDate(DateTime? lastSyncDate) =>
      _$this._lastSyncDate = lastSyncDate;

  bool? _hasLastSyncSucceeded;
  bool? get hasLastSyncSucceeded => _$this._hasLastSyncSucceeded;
  set hasLastSyncSucceeded(bool? hasLastSyncSucceeded) =>
      _$this._hasLastSyncSucceeded = hasLastSyncSucceeded;

  String? _syncStatus;
  String? get syncStatus => _$this._syncStatus;
  set syncStatus(String? syncStatus) => _$this._syncStatus = syncStatus;

  SyncStateBuilder();

  SyncStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSyncing = $v.isSyncing;
      _lastSyncDate = $v.lastSyncDate;
      _hasLastSyncSucceeded = $v.hasLastSyncSucceeded;
      _syncStatus = $v.syncStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SyncState;
  }

  @override
  void update(void Function(SyncStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SyncState build() => _build();

  _$SyncState _build() {
    final _$result = _$v ??
        new _$SyncState._(
            isSyncing: BuiltValueNullFieldError.checkNotNull(
                isSyncing, r'SyncState', 'isSyncing'),
            lastSyncDate: lastSyncDate,
            hasLastSyncSucceeded: hasLastSyncSucceeded,
            syncStatus: syncStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
