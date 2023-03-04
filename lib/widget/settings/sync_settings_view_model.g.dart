// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_settings_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SyncSettingsViewModel extends SyncSettingsViewModel {
  @override
  final String title;
  @override
  final String syncOptionTitle;
  @override
  final String syncStatus;
  @override
  final String enableEncryptionOptionExplanation;
  @override
  final String enableEncryptionOptionTitle;
  @override
  final FunctionHolder encryptionCommand;
  @override
  final bool isEncryptionEnabled;
  @override
  final bool isSyncEnabled;
  @override
  final bool isSyncing;
  @override
  final String? lastSyncStatusMessage;
  @override
  final String syncStateOptionTitle;
  @override
  final String syncStateExplanation;
  @override
  final FunctionHolder syncStateCommand;
  @override
  final FunctionHolder syncStartCommand;
  @override
  final FunctionHolder backCommand;

  factory _$SyncSettingsViewModel(
          [void Function(SyncSettingsViewModelBuilder)? updates]) =>
      (new SyncSettingsViewModelBuilder()..update(updates))._build();

  _$SyncSettingsViewModel._(
      {required this.title,
      required this.syncOptionTitle,
      required this.syncStatus,
      required this.enableEncryptionOptionExplanation,
      required this.enableEncryptionOptionTitle,
      required this.encryptionCommand,
      required this.isEncryptionEnabled,
      required this.isSyncEnabled,
      required this.isSyncing,
      this.lastSyncStatusMessage,
      required this.syncStateOptionTitle,
      required this.syncStateExplanation,
      required this.syncStateCommand,
      required this.syncStartCommand,
      required this.backCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'SyncSettingsViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        syncOptionTitle, r'SyncSettingsViewModel', 'syncOptionTitle');
    BuiltValueNullFieldError.checkNotNull(
        syncStatus, r'SyncSettingsViewModel', 'syncStatus');
    BuiltValueNullFieldError.checkNotNull(enableEncryptionOptionExplanation,
        r'SyncSettingsViewModel', 'enableEncryptionOptionExplanation');
    BuiltValueNullFieldError.checkNotNull(enableEncryptionOptionTitle,
        r'SyncSettingsViewModel', 'enableEncryptionOptionTitle');
    BuiltValueNullFieldError.checkNotNull(
        encryptionCommand, r'SyncSettingsViewModel', 'encryptionCommand');
    BuiltValueNullFieldError.checkNotNull(
        isEncryptionEnabled, r'SyncSettingsViewModel', 'isEncryptionEnabled');
    BuiltValueNullFieldError.checkNotNull(
        isSyncEnabled, r'SyncSettingsViewModel', 'isSyncEnabled');
    BuiltValueNullFieldError.checkNotNull(
        isSyncing, r'SyncSettingsViewModel', 'isSyncing');
    BuiltValueNullFieldError.checkNotNull(
        syncStateOptionTitle, r'SyncSettingsViewModel', 'syncStateOptionTitle');
    BuiltValueNullFieldError.checkNotNull(
        syncStateExplanation, r'SyncSettingsViewModel', 'syncStateExplanation');
    BuiltValueNullFieldError.checkNotNull(
        syncStateCommand, r'SyncSettingsViewModel', 'syncStateCommand');
    BuiltValueNullFieldError.checkNotNull(
        syncStartCommand, r'SyncSettingsViewModel', 'syncStartCommand');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'SyncSettingsViewModel', 'backCommand');
  }

  @override
  SyncSettingsViewModel rebuild(
          void Function(SyncSettingsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncSettingsViewModelBuilder toBuilder() =>
      new SyncSettingsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncSettingsViewModel &&
        title == other.title &&
        syncOptionTitle == other.syncOptionTitle &&
        syncStatus == other.syncStatus &&
        enableEncryptionOptionExplanation ==
            other.enableEncryptionOptionExplanation &&
        enableEncryptionOptionTitle == other.enableEncryptionOptionTitle &&
        encryptionCommand == other.encryptionCommand &&
        isEncryptionEnabled == other.isEncryptionEnabled &&
        isSyncEnabled == other.isSyncEnabled &&
        isSyncing == other.isSyncing &&
        lastSyncStatusMessage == other.lastSyncStatusMessage &&
        syncStateOptionTitle == other.syncStateOptionTitle &&
        syncStateExplanation == other.syncStateExplanation &&
        syncStateCommand == other.syncStateCommand &&
        syncStartCommand == other.syncStartCommand &&
        backCommand == other.backCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, syncOptionTitle.hashCode);
    _$hash = $jc(_$hash, syncStatus.hashCode);
    _$hash = $jc(_$hash, enableEncryptionOptionExplanation.hashCode);
    _$hash = $jc(_$hash, enableEncryptionOptionTitle.hashCode);
    _$hash = $jc(_$hash, encryptionCommand.hashCode);
    _$hash = $jc(_$hash, isEncryptionEnabled.hashCode);
    _$hash = $jc(_$hash, isSyncEnabled.hashCode);
    _$hash = $jc(_$hash, isSyncing.hashCode);
    _$hash = $jc(_$hash, lastSyncStatusMessage.hashCode);
    _$hash = $jc(_$hash, syncStateOptionTitle.hashCode);
    _$hash = $jc(_$hash, syncStateExplanation.hashCode);
    _$hash = $jc(_$hash, syncStateCommand.hashCode);
    _$hash = $jc(_$hash, syncStartCommand.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SyncSettingsViewModel')
          ..add('title', title)
          ..add('syncOptionTitle', syncOptionTitle)
          ..add('syncStatus', syncStatus)
          ..add('enableEncryptionOptionExplanation',
              enableEncryptionOptionExplanation)
          ..add('enableEncryptionOptionTitle', enableEncryptionOptionTitle)
          ..add('encryptionCommand', encryptionCommand)
          ..add('isEncryptionEnabled', isEncryptionEnabled)
          ..add('isSyncEnabled', isSyncEnabled)
          ..add('isSyncing', isSyncing)
          ..add('lastSyncStatusMessage', lastSyncStatusMessage)
          ..add('syncStateOptionTitle', syncStateOptionTitle)
          ..add('syncStateExplanation', syncStateExplanation)
          ..add('syncStateCommand', syncStateCommand)
          ..add('syncStartCommand', syncStartCommand)
          ..add('backCommand', backCommand))
        .toString();
  }
}

class SyncSettingsViewModelBuilder
    implements Builder<SyncSettingsViewModel, SyncSettingsViewModelBuilder> {
  _$SyncSettingsViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _syncOptionTitle;
  String? get syncOptionTitle => _$this._syncOptionTitle;
  set syncOptionTitle(String? syncOptionTitle) =>
      _$this._syncOptionTitle = syncOptionTitle;

  String? _syncStatus;
  String? get syncStatus => _$this._syncStatus;
  set syncStatus(String? syncStatus) => _$this._syncStatus = syncStatus;

  String? _enableEncryptionOptionExplanation;
  String? get enableEncryptionOptionExplanation =>
      _$this._enableEncryptionOptionExplanation;
  set enableEncryptionOptionExplanation(
          String? enableEncryptionOptionExplanation) =>
      _$this._enableEncryptionOptionExplanation =
          enableEncryptionOptionExplanation;

  String? _enableEncryptionOptionTitle;
  String? get enableEncryptionOptionTitle =>
      _$this._enableEncryptionOptionTitle;
  set enableEncryptionOptionTitle(String? enableEncryptionOptionTitle) =>
      _$this._enableEncryptionOptionTitle = enableEncryptionOptionTitle;

  FunctionHolder? _encryptionCommand;
  FunctionHolder? get encryptionCommand => _$this._encryptionCommand;
  set encryptionCommand(FunctionHolder? encryptionCommand) =>
      _$this._encryptionCommand = encryptionCommand;

  bool? _isEncryptionEnabled;
  bool? get isEncryptionEnabled => _$this._isEncryptionEnabled;
  set isEncryptionEnabled(bool? isEncryptionEnabled) =>
      _$this._isEncryptionEnabled = isEncryptionEnabled;

  bool? _isSyncEnabled;
  bool? get isSyncEnabled => _$this._isSyncEnabled;
  set isSyncEnabled(bool? isSyncEnabled) =>
      _$this._isSyncEnabled = isSyncEnabled;

  bool? _isSyncing;
  bool? get isSyncing => _$this._isSyncing;
  set isSyncing(bool? isSyncing) => _$this._isSyncing = isSyncing;

  String? _lastSyncStatusMessage;
  String? get lastSyncStatusMessage => _$this._lastSyncStatusMessage;
  set lastSyncStatusMessage(String? lastSyncStatusMessage) =>
      _$this._lastSyncStatusMessage = lastSyncStatusMessage;

  String? _syncStateOptionTitle;
  String? get syncStateOptionTitle => _$this._syncStateOptionTitle;
  set syncStateOptionTitle(String? syncStateOptionTitle) =>
      _$this._syncStateOptionTitle = syncStateOptionTitle;

  String? _syncStateExplanation;
  String? get syncStateExplanation => _$this._syncStateExplanation;
  set syncStateExplanation(String? syncStateExplanation) =>
      _$this._syncStateExplanation = syncStateExplanation;

  FunctionHolder? _syncStateCommand;
  FunctionHolder? get syncStateCommand => _$this._syncStateCommand;
  set syncStateCommand(FunctionHolder? syncStateCommand) =>
      _$this._syncStateCommand = syncStateCommand;

  FunctionHolder? _syncStartCommand;
  FunctionHolder? get syncStartCommand => _$this._syncStartCommand;
  set syncStartCommand(FunctionHolder? syncStartCommand) =>
      _$this._syncStartCommand = syncStartCommand;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  SyncSettingsViewModelBuilder();

  SyncSettingsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _syncOptionTitle = $v.syncOptionTitle;
      _syncStatus = $v.syncStatus;
      _enableEncryptionOptionExplanation = $v.enableEncryptionOptionExplanation;
      _enableEncryptionOptionTitle = $v.enableEncryptionOptionTitle;
      _encryptionCommand = $v.encryptionCommand;
      _isEncryptionEnabled = $v.isEncryptionEnabled;
      _isSyncEnabled = $v.isSyncEnabled;
      _isSyncing = $v.isSyncing;
      _lastSyncStatusMessage = $v.lastSyncStatusMessage;
      _syncStateOptionTitle = $v.syncStateOptionTitle;
      _syncStateExplanation = $v.syncStateExplanation;
      _syncStateCommand = $v.syncStateCommand;
      _syncStartCommand = $v.syncStartCommand;
      _backCommand = $v.backCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncSettingsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SyncSettingsViewModel;
  }

  @override
  void update(void Function(SyncSettingsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SyncSettingsViewModel build() => _build();

  _$SyncSettingsViewModel _build() {
    final _$result = _$v ??
        new _$SyncSettingsViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'SyncSettingsViewModel', 'title'),
            syncOptionTitle: BuiltValueNullFieldError.checkNotNull(
                syncOptionTitle, r'SyncSettingsViewModel', 'syncOptionTitle'),
            syncStatus: BuiltValueNullFieldError.checkNotNull(
                syncStatus, r'SyncSettingsViewModel', 'syncStatus'),
            enableEncryptionOptionExplanation: BuiltValueNullFieldError.checkNotNull(
                enableEncryptionOptionExplanation,
                r'SyncSettingsViewModel',
                'enableEncryptionOptionExplanation'),
            enableEncryptionOptionTitle: BuiltValueNullFieldError.checkNotNull(
                enableEncryptionOptionTitle,
                r'SyncSettingsViewModel',
                'enableEncryptionOptionTitle'),
            encryptionCommand: BuiltValueNullFieldError.checkNotNull(
                encryptionCommand, r'SyncSettingsViewModel', 'encryptionCommand'),
            isEncryptionEnabled: BuiltValueNullFieldError.checkNotNull(isEncryptionEnabled, r'SyncSettingsViewModel', 'isEncryptionEnabled'),
            isSyncEnabled: BuiltValueNullFieldError.checkNotNull(isSyncEnabled, r'SyncSettingsViewModel', 'isSyncEnabled'),
            isSyncing: BuiltValueNullFieldError.checkNotNull(isSyncing, r'SyncSettingsViewModel', 'isSyncing'),
            lastSyncStatusMessage: lastSyncStatusMessage,
            syncStateOptionTitle: BuiltValueNullFieldError.checkNotNull(syncStateOptionTitle, r'SyncSettingsViewModel', 'syncStateOptionTitle'),
            syncStateExplanation: BuiltValueNullFieldError.checkNotNull(syncStateExplanation, r'SyncSettingsViewModel', 'syncStateExplanation'),
            syncStateCommand: BuiltValueNullFieldError.checkNotNull(syncStateCommand, r'SyncSettingsViewModel', 'syncStateCommand'),
            syncStartCommand: BuiltValueNullFieldError.checkNotNull(syncStartCommand, r'SyncSettingsViewModel', 'syncStartCommand'),
            backCommand: BuiltValueNullFieldError.checkNotNull(backCommand, r'SyncSettingsViewModel', 'backCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
