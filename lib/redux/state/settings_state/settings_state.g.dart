// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsState extends SettingsState {
  @override
  final bool isLocationSavingEnabled;
  @override
  final bool isBiometricEnabled;
  @override
  final bool isBiometricActive;
  @override
  final bool isBiometricAvailable;
  @override
  final bool isPasscodeEnabled;
  @override
  final StorageReviewSettings reviewSettings;
  @override
  final String language;
  @override
  final int passcodeRequireAfterSeconds;
  @override
  final String? encryptionKey;
  @override
  final bool isSyncEnabled;
  @override
  final bool isEncryptionKeyLocked;
  @override
  final List<LanguageDto> availableLanguages;

  factory _$SettingsState([void Function(SettingsStateBuilder)? updates]) =>
      (new SettingsStateBuilder()..update(updates))._build();

  _$SettingsState._(
      {required this.isLocationSavingEnabled,
      required this.isBiometricEnabled,
      required this.isBiometricActive,
      required this.isBiometricAvailable,
      required this.isPasscodeEnabled,
      required this.reviewSettings,
      required this.language,
      required this.passcodeRequireAfterSeconds,
      this.encryptionKey,
      required this.isSyncEnabled,
      required this.isEncryptionKeyLocked,
      required this.availableLanguages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLocationSavingEnabled, r'SettingsState', 'isLocationSavingEnabled');
    BuiltValueNullFieldError.checkNotNull(
        isBiometricEnabled, r'SettingsState', 'isBiometricEnabled');
    BuiltValueNullFieldError.checkNotNull(
        isBiometricActive, r'SettingsState', 'isBiometricActive');
    BuiltValueNullFieldError.checkNotNull(
        isBiometricAvailable, r'SettingsState', 'isBiometricAvailable');
    BuiltValueNullFieldError.checkNotNull(
        isPasscodeEnabled, r'SettingsState', 'isPasscodeEnabled');
    BuiltValueNullFieldError.checkNotNull(
        reviewSettings, r'SettingsState', 'reviewSettings');
    BuiltValueNullFieldError.checkNotNull(
        language, r'SettingsState', 'language');
    BuiltValueNullFieldError.checkNotNull(passcodeRequireAfterSeconds,
        r'SettingsState', 'passcodeRequireAfterSeconds');
    BuiltValueNullFieldError.checkNotNull(
        isSyncEnabled, r'SettingsState', 'isSyncEnabled');
    BuiltValueNullFieldError.checkNotNull(
        isEncryptionKeyLocked, r'SettingsState', 'isEncryptionKeyLocked');
    BuiltValueNullFieldError.checkNotNull(
        availableLanguages, r'SettingsState', 'availableLanguages');
  }

  @override
  SettingsState rebuild(void Function(SettingsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsStateBuilder toBuilder() => new SettingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsState &&
        isLocationSavingEnabled == other.isLocationSavingEnabled &&
        isBiometricEnabled == other.isBiometricEnabled &&
        isBiometricActive == other.isBiometricActive &&
        isBiometricAvailable == other.isBiometricAvailable &&
        isPasscodeEnabled == other.isPasscodeEnabled &&
        reviewSettings == other.reviewSettings &&
        language == other.language &&
        passcodeRequireAfterSeconds == other.passcodeRequireAfterSeconds &&
        encryptionKey == other.encryptionKey &&
        isSyncEnabled == other.isSyncEnabled &&
        isEncryptionKeyLocked == other.isEncryptionKeyLocked &&
        availableLanguages == other.availableLanguages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLocationSavingEnabled.hashCode);
    _$hash = $jc(_$hash, isBiometricEnabled.hashCode);
    _$hash = $jc(_$hash, isBiometricActive.hashCode);
    _$hash = $jc(_$hash, isBiometricAvailable.hashCode);
    _$hash = $jc(_$hash, isPasscodeEnabled.hashCode);
    _$hash = $jc(_$hash, reviewSettings.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, passcodeRequireAfterSeconds.hashCode);
    _$hash = $jc(_$hash, encryptionKey.hashCode);
    _$hash = $jc(_$hash, isSyncEnabled.hashCode);
    _$hash = $jc(_$hash, isEncryptionKeyLocked.hashCode);
    _$hash = $jc(_$hash, availableLanguages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingsState')
          ..add('isLocationSavingEnabled', isLocationSavingEnabled)
          ..add('isBiometricEnabled', isBiometricEnabled)
          ..add('isBiometricActive', isBiometricActive)
          ..add('isBiometricAvailable', isBiometricAvailable)
          ..add('isPasscodeEnabled', isPasscodeEnabled)
          ..add('reviewSettings', reviewSettings)
          ..add('language', language)
          ..add('passcodeRequireAfterSeconds', passcodeRequireAfterSeconds)
          ..add('encryptionKey', encryptionKey)
          ..add('isSyncEnabled', isSyncEnabled)
          ..add('isEncryptionKeyLocked', isEncryptionKeyLocked)
          ..add('availableLanguages', availableLanguages))
        .toString();
  }
}

class SettingsStateBuilder
    implements Builder<SettingsState, SettingsStateBuilder> {
  _$SettingsState? _$v;

  bool? _isLocationSavingEnabled;
  bool? get isLocationSavingEnabled => _$this._isLocationSavingEnabled;
  set isLocationSavingEnabled(bool? isLocationSavingEnabled) =>
      _$this._isLocationSavingEnabled = isLocationSavingEnabled;

  bool? _isBiometricEnabled;
  bool? get isBiometricEnabled => _$this._isBiometricEnabled;
  set isBiometricEnabled(bool? isBiometricEnabled) =>
      _$this._isBiometricEnabled = isBiometricEnabled;

  bool? _isBiometricActive;
  bool? get isBiometricActive => _$this._isBiometricActive;
  set isBiometricActive(bool? isBiometricActive) =>
      _$this._isBiometricActive = isBiometricActive;

  bool? _isBiometricAvailable;
  bool? get isBiometricAvailable => _$this._isBiometricAvailable;
  set isBiometricAvailable(bool? isBiometricAvailable) =>
      _$this._isBiometricAvailable = isBiometricAvailable;

  bool? _isPasscodeEnabled;
  bool? get isPasscodeEnabled => _$this._isPasscodeEnabled;
  set isPasscodeEnabled(bool? isPasscodeEnabled) =>
      _$this._isPasscodeEnabled = isPasscodeEnabled;

  StorageReviewSettings? _reviewSettings;
  StorageReviewSettings? get reviewSettings => _$this._reviewSettings;
  set reviewSettings(StorageReviewSettings? reviewSettings) =>
      _$this._reviewSettings = reviewSettings;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  int? _passcodeRequireAfterSeconds;
  int? get passcodeRequireAfterSeconds => _$this._passcodeRequireAfterSeconds;
  set passcodeRequireAfterSeconds(int? passcodeRequireAfterSeconds) =>
      _$this._passcodeRequireAfterSeconds = passcodeRequireAfterSeconds;

  String? _encryptionKey;
  String? get encryptionKey => _$this._encryptionKey;
  set encryptionKey(String? encryptionKey) =>
      _$this._encryptionKey = encryptionKey;

  bool? _isSyncEnabled;
  bool? get isSyncEnabled => _$this._isSyncEnabled;
  set isSyncEnabled(bool? isSyncEnabled) =>
      _$this._isSyncEnabled = isSyncEnabled;

  bool? _isEncryptionKeyLocked;
  bool? get isEncryptionKeyLocked => _$this._isEncryptionKeyLocked;
  set isEncryptionKeyLocked(bool? isEncryptionKeyLocked) =>
      _$this._isEncryptionKeyLocked = isEncryptionKeyLocked;

  List<LanguageDto>? _availableLanguages;
  List<LanguageDto>? get availableLanguages => _$this._availableLanguages;
  set availableLanguages(List<LanguageDto>? availableLanguages) =>
      _$this._availableLanguages = availableLanguages;

  SettingsStateBuilder();

  SettingsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLocationSavingEnabled = $v.isLocationSavingEnabled;
      _isBiometricEnabled = $v.isBiometricEnabled;
      _isBiometricActive = $v.isBiometricActive;
      _isBiometricAvailable = $v.isBiometricAvailable;
      _isPasscodeEnabled = $v.isPasscodeEnabled;
      _reviewSettings = $v.reviewSettings;
      _language = $v.language;
      _passcodeRequireAfterSeconds = $v.passcodeRequireAfterSeconds;
      _encryptionKey = $v.encryptionKey;
      _isSyncEnabled = $v.isSyncEnabled;
      _isEncryptionKeyLocked = $v.isEncryptionKeyLocked;
      _availableLanguages = $v.availableLanguages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingsState;
  }

  @override
  void update(void Function(SettingsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsState build() => _build();

  _$SettingsState _build() {
    final _$result = _$v ??
        new _$SettingsState._(
            isLocationSavingEnabled: BuiltValueNullFieldError.checkNotNull(
                isLocationSavingEnabled, r'SettingsState', 'isLocationSavingEnabled'),
            isBiometricEnabled: BuiltValueNullFieldError.checkNotNull(
                isBiometricEnabled, r'SettingsState', 'isBiometricEnabled'),
            isBiometricActive: BuiltValueNullFieldError.checkNotNull(
                isBiometricActive, r'SettingsState', 'isBiometricActive'),
            isBiometricAvailable: BuiltValueNullFieldError.checkNotNull(
                isBiometricAvailable, r'SettingsState', 'isBiometricAvailable'),
            isPasscodeEnabled: BuiltValueNullFieldError.checkNotNull(
                isPasscodeEnabled, r'SettingsState', 'isPasscodeEnabled'),
            reviewSettings: BuiltValueNullFieldError.checkNotNull(
                reviewSettings, r'SettingsState', 'reviewSettings'),
            language: BuiltValueNullFieldError.checkNotNull(
                language, r'SettingsState', 'language'),
            passcodeRequireAfterSeconds: BuiltValueNullFieldError.checkNotNull(passcodeRequireAfterSeconds, r'SettingsState', 'passcodeRequireAfterSeconds'),
            encryptionKey: encryptionKey,
            isSyncEnabled: BuiltValueNullFieldError.checkNotNull(isSyncEnabled, r'SettingsState', 'isSyncEnabled'),
            isEncryptionKeyLocked: BuiltValueNullFieldError.checkNotNull(isEncryptionKeyLocked, r'SettingsState', 'isEncryptionKeyLocked'),
            availableLanguages: BuiltValueNullFieldError.checkNotNull(availableLanguages, r'SettingsState', 'availableLanguages'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
