// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationSettings extends ConfigurationSettings {
  @override
  final ConfigurationType type;
  @override
  final String appName;
  @override
  final String apiUrl;
  @override
  final String privacyPolicyUrl;
  @override
  final String termsOfUseUrl;
  @override
  final String defaultFont;
  @override
  final int syncDataIntervalSeconds;
  @override
  final double fullscreenMinWidth;
  @override
  final double sideMenuWidth;
  @override
  final String emailValidator;
  @override
  final String encryptedText;

  factory _$ConfigurationSettings(
          [void Function(ConfigurationSettingsBuilder)? updates]) =>
      (new ConfigurationSettingsBuilder()..update(updates))._build();

  _$ConfigurationSettings._(
      {required this.type,
      required this.appName,
      required this.apiUrl,
      required this.privacyPolicyUrl,
      required this.termsOfUseUrl,
      required this.defaultFont,
      required this.syncDataIntervalSeconds,
      required this.fullscreenMinWidth,
      required this.sideMenuWidth,
      required this.emailValidator,
      required this.encryptedText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'ConfigurationSettings', 'type');
    BuiltValueNullFieldError.checkNotNull(
        appName, r'ConfigurationSettings', 'appName');
    BuiltValueNullFieldError.checkNotNull(
        apiUrl, r'ConfigurationSettings', 'apiUrl');
    BuiltValueNullFieldError.checkNotNull(
        privacyPolicyUrl, r'ConfigurationSettings', 'privacyPolicyUrl');
    BuiltValueNullFieldError.checkNotNull(
        termsOfUseUrl, r'ConfigurationSettings', 'termsOfUseUrl');
    BuiltValueNullFieldError.checkNotNull(
        defaultFont, r'ConfigurationSettings', 'defaultFont');
    BuiltValueNullFieldError.checkNotNull(syncDataIntervalSeconds,
        r'ConfigurationSettings', 'syncDataIntervalSeconds');
    BuiltValueNullFieldError.checkNotNull(
        fullscreenMinWidth, r'ConfigurationSettings', 'fullscreenMinWidth');
    BuiltValueNullFieldError.checkNotNull(
        sideMenuWidth, r'ConfigurationSettings', 'sideMenuWidth');
    BuiltValueNullFieldError.checkNotNull(
        emailValidator, r'ConfigurationSettings', 'emailValidator');
    BuiltValueNullFieldError.checkNotNull(
        encryptedText, r'ConfigurationSettings', 'encryptedText');
  }

  @override
  ConfigurationSettings rebuild(
          void Function(ConfigurationSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurationSettingsBuilder toBuilder() =>
      new ConfigurationSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurationSettings &&
        type == other.type &&
        appName == other.appName &&
        apiUrl == other.apiUrl &&
        privacyPolicyUrl == other.privacyPolicyUrl &&
        termsOfUseUrl == other.termsOfUseUrl &&
        defaultFont == other.defaultFont &&
        syncDataIntervalSeconds == other.syncDataIntervalSeconds &&
        fullscreenMinWidth == other.fullscreenMinWidth &&
        sideMenuWidth == other.sideMenuWidth &&
        emailValidator == other.emailValidator &&
        encryptedText == other.encryptedText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, appName.hashCode);
    _$hash = $jc(_$hash, apiUrl.hashCode);
    _$hash = $jc(_$hash, privacyPolicyUrl.hashCode);
    _$hash = $jc(_$hash, termsOfUseUrl.hashCode);
    _$hash = $jc(_$hash, defaultFont.hashCode);
    _$hash = $jc(_$hash, syncDataIntervalSeconds.hashCode);
    _$hash = $jc(_$hash, fullscreenMinWidth.hashCode);
    _$hash = $jc(_$hash, sideMenuWidth.hashCode);
    _$hash = $jc(_$hash, emailValidator.hashCode);
    _$hash = $jc(_$hash, encryptedText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfigurationSettings')
          ..add('type', type)
          ..add('appName', appName)
          ..add('apiUrl', apiUrl)
          ..add('privacyPolicyUrl', privacyPolicyUrl)
          ..add('termsOfUseUrl', termsOfUseUrl)
          ..add('defaultFont', defaultFont)
          ..add('syncDataIntervalSeconds', syncDataIntervalSeconds)
          ..add('fullscreenMinWidth', fullscreenMinWidth)
          ..add('sideMenuWidth', sideMenuWidth)
          ..add('emailValidator', emailValidator)
          ..add('encryptedText', encryptedText))
        .toString();
  }
}

class ConfigurationSettingsBuilder
    implements Builder<ConfigurationSettings, ConfigurationSettingsBuilder> {
  _$ConfigurationSettings? _$v;

  ConfigurationType? _type;
  ConfigurationType? get type => _$this._type;
  set type(ConfigurationType? type) => _$this._type = type;

  String? _appName;
  String? get appName => _$this._appName;
  set appName(String? appName) => _$this._appName = appName;

  String? _apiUrl;
  String? get apiUrl => _$this._apiUrl;
  set apiUrl(String? apiUrl) => _$this._apiUrl = apiUrl;

  String? _privacyPolicyUrl;
  String? get privacyPolicyUrl => _$this._privacyPolicyUrl;
  set privacyPolicyUrl(String? privacyPolicyUrl) =>
      _$this._privacyPolicyUrl = privacyPolicyUrl;

  String? _termsOfUseUrl;
  String? get termsOfUseUrl => _$this._termsOfUseUrl;
  set termsOfUseUrl(String? termsOfUseUrl) =>
      _$this._termsOfUseUrl = termsOfUseUrl;

  String? _defaultFont;
  String? get defaultFont => _$this._defaultFont;
  set defaultFont(String? defaultFont) => _$this._defaultFont = defaultFont;

  int? _syncDataIntervalSeconds;
  int? get syncDataIntervalSeconds => _$this._syncDataIntervalSeconds;
  set syncDataIntervalSeconds(int? syncDataIntervalSeconds) =>
      _$this._syncDataIntervalSeconds = syncDataIntervalSeconds;

  double? _fullscreenMinWidth;
  double? get fullscreenMinWidth => _$this._fullscreenMinWidth;
  set fullscreenMinWidth(double? fullscreenMinWidth) =>
      _$this._fullscreenMinWidth = fullscreenMinWidth;

  double? _sideMenuWidth;
  double? get sideMenuWidth => _$this._sideMenuWidth;
  set sideMenuWidth(double? sideMenuWidth) =>
      _$this._sideMenuWidth = sideMenuWidth;

  String? _emailValidator;
  String? get emailValidator => _$this._emailValidator;
  set emailValidator(String? emailValidator) =>
      _$this._emailValidator = emailValidator;

  String? _encryptedText;
  String? get encryptedText => _$this._encryptedText;
  set encryptedText(String? encryptedText) =>
      _$this._encryptedText = encryptedText;

  ConfigurationSettingsBuilder();

  ConfigurationSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _appName = $v.appName;
      _apiUrl = $v.apiUrl;
      _privacyPolicyUrl = $v.privacyPolicyUrl;
      _termsOfUseUrl = $v.termsOfUseUrl;
      _defaultFont = $v.defaultFont;
      _syncDataIntervalSeconds = $v.syncDataIntervalSeconds;
      _fullscreenMinWidth = $v.fullscreenMinWidth;
      _sideMenuWidth = $v.sideMenuWidth;
      _emailValidator = $v.emailValidator;
      _encryptedText = $v.encryptedText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigurationSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigurationSettings;
  }

  @override
  void update(void Function(ConfigurationSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigurationSettings build() => _build();

  _$ConfigurationSettings _build() {
    final _$result = _$v ??
        new _$ConfigurationSettings._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ConfigurationSettings', 'type'),
            appName: BuiltValueNullFieldError.checkNotNull(
                appName, r'ConfigurationSettings', 'appName'),
            apiUrl: BuiltValueNullFieldError.checkNotNull(
                apiUrl, r'ConfigurationSettings', 'apiUrl'),
            privacyPolicyUrl: BuiltValueNullFieldError.checkNotNull(
                privacyPolicyUrl, r'ConfigurationSettings', 'privacyPolicyUrl'),
            termsOfUseUrl: BuiltValueNullFieldError.checkNotNull(
                termsOfUseUrl, r'ConfigurationSettings', 'termsOfUseUrl'),
            defaultFont: BuiltValueNullFieldError.checkNotNull(
                defaultFont, r'ConfigurationSettings', 'defaultFont'),
            syncDataIntervalSeconds: BuiltValueNullFieldError.checkNotNull(
                syncDataIntervalSeconds, r'ConfigurationSettings', 'syncDataIntervalSeconds'),
            fullscreenMinWidth: BuiltValueNullFieldError.checkNotNull(
                fullscreenMinWidth, r'ConfigurationSettings', 'fullscreenMinWidth'),
            sideMenuWidth: BuiltValueNullFieldError.checkNotNull(sideMenuWidth, r'ConfigurationSettings', 'sideMenuWidth'),
            emailValidator: BuiltValueNullFieldError.checkNotNull(emailValidator, r'ConfigurationSettings', 'emailValidator'),
            encryptedText: BuiltValueNullFieldError.checkNotNull(encryptedText, r'ConfigurationSettings', 'encryptedText'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
