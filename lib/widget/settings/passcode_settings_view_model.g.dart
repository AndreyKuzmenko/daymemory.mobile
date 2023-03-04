// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passcode_settings_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasscodeSettingsViewModel extends PasscodeSettingsViewModel {
  @override
  final String title;
  @override
  final bool isScreenBlockingEnabled;
  @override
  final bool isBiometricAvailable;
  @override
  final String screenBlockingOptionTitle;
  @override
  final FunctionHolder screenBlockingToogleCommand;
  @override
  final String screenBlockingExplanation;
  @override
  final bool isBiometricEnabled;
  @override
  final bool isBiometricActive;
  @override
  final String biometricOptionTitle;
  @override
  final FunctionHolder biometricToogleCommand;
  @override
  final FunctionHolder backCommand;
  @override
  final String requireAfterOptionTitle;
  @override
  final String requireAfterOptionValue;
  @override
  final FunctionHolder requireAfterCommand;

  factory _$PasscodeSettingsViewModel(
          [void Function(PasscodeSettingsViewModelBuilder)? updates]) =>
      (new PasscodeSettingsViewModelBuilder()..update(updates))._build();

  _$PasscodeSettingsViewModel._(
      {required this.title,
      required this.isScreenBlockingEnabled,
      required this.isBiometricAvailable,
      required this.screenBlockingOptionTitle,
      required this.screenBlockingToogleCommand,
      required this.screenBlockingExplanation,
      required this.isBiometricEnabled,
      required this.isBiometricActive,
      required this.biometricOptionTitle,
      required this.biometricToogleCommand,
      required this.backCommand,
      required this.requireAfterOptionTitle,
      required this.requireAfterOptionValue,
      required this.requireAfterCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'PasscodeSettingsViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(isScreenBlockingEnabled,
        r'PasscodeSettingsViewModel', 'isScreenBlockingEnabled');
    BuiltValueNullFieldError.checkNotNull(isBiometricAvailable,
        r'PasscodeSettingsViewModel', 'isBiometricAvailable');
    BuiltValueNullFieldError.checkNotNull(screenBlockingOptionTitle,
        r'PasscodeSettingsViewModel', 'screenBlockingOptionTitle');
    BuiltValueNullFieldError.checkNotNull(screenBlockingToogleCommand,
        r'PasscodeSettingsViewModel', 'screenBlockingToogleCommand');
    BuiltValueNullFieldError.checkNotNull(screenBlockingExplanation,
        r'PasscodeSettingsViewModel', 'screenBlockingExplanation');
    BuiltValueNullFieldError.checkNotNull(
        isBiometricEnabled, r'PasscodeSettingsViewModel', 'isBiometricEnabled');
    BuiltValueNullFieldError.checkNotNull(
        isBiometricActive, r'PasscodeSettingsViewModel', 'isBiometricActive');
    BuiltValueNullFieldError.checkNotNull(biometricOptionTitle,
        r'PasscodeSettingsViewModel', 'biometricOptionTitle');
    BuiltValueNullFieldError.checkNotNull(biometricToogleCommand,
        r'PasscodeSettingsViewModel', 'biometricToogleCommand');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'PasscodeSettingsViewModel', 'backCommand');
    BuiltValueNullFieldError.checkNotNull(requireAfterOptionTitle,
        r'PasscodeSettingsViewModel', 'requireAfterOptionTitle');
    BuiltValueNullFieldError.checkNotNull(requireAfterOptionValue,
        r'PasscodeSettingsViewModel', 'requireAfterOptionValue');
    BuiltValueNullFieldError.checkNotNull(requireAfterCommand,
        r'PasscodeSettingsViewModel', 'requireAfterCommand');
  }

  @override
  PasscodeSettingsViewModel rebuild(
          void Function(PasscodeSettingsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasscodeSettingsViewModelBuilder toBuilder() =>
      new PasscodeSettingsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasscodeSettingsViewModel &&
        title == other.title &&
        isScreenBlockingEnabled == other.isScreenBlockingEnabled &&
        isBiometricAvailable == other.isBiometricAvailable &&
        screenBlockingOptionTitle == other.screenBlockingOptionTitle &&
        screenBlockingToogleCommand == other.screenBlockingToogleCommand &&
        screenBlockingExplanation == other.screenBlockingExplanation &&
        isBiometricEnabled == other.isBiometricEnabled &&
        isBiometricActive == other.isBiometricActive &&
        biometricOptionTitle == other.biometricOptionTitle &&
        biometricToogleCommand == other.biometricToogleCommand &&
        backCommand == other.backCommand &&
        requireAfterOptionTitle == other.requireAfterOptionTitle &&
        requireAfterOptionValue == other.requireAfterOptionValue &&
        requireAfterCommand == other.requireAfterCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, isScreenBlockingEnabled.hashCode);
    _$hash = $jc(_$hash, isBiometricAvailable.hashCode);
    _$hash = $jc(_$hash, screenBlockingOptionTitle.hashCode);
    _$hash = $jc(_$hash, screenBlockingToogleCommand.hashCode);
    _$hash = $jc(_$hash, screenBlockingExplanation.hashCode);
    _$hash = $jc(_$hash, isBiometricEnabled.hashCode);
    _$hash = $jc(_$hash, isBiometricActive.hashCode);
    _$hash = $jc(_$hash, biometricOptionTitle.hashCode);
    _$hash = $jc(_$hash, biometricToogleCommand.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jc(_$hash, requireAfterOptionTitle.hashCode);
    _$hash = $jc(_$hash, requireAfterOptionValue.hashCode);
    _$hash = $jc(_$hash, requireAfterCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PasscodeSettingsViewModel')
          ..add('title', title)
          ..add('isScreenBlockingEnabled', isScreenBlockingEnabled)
          ..add('isBiometricAvailable', isBiometricAvailable)
          ..add('screenBlockingOptionTitle', screenBlockingOptionTitle)
          ..add('screenBlockingToogleCommand', screenBlockingToogleCommand)
          ..add('screenBlockingExplanation', screenBlockingExplanation)
          ..add('isBiometricEnabled', isBiometricEnabled)
          ..add('isBiometricActive', isBiometricActive)
          ..add('biometricOptionTitle', biometricOptionTitle)
          ..add('biometricToogleCommand', biometricToogleCommand)
          ..add('backCommand', backCommand)
          ..add('requireAfterOptionTitle', requireAfterOptionTitle)
          ..add('requireAfterOptionValue', requireAfterOptionValue)
          ..add('requireAfterCommand', requireAfterCommand))
        .toString();
  }
}

class PasscodeSettingsViewModelBuilder
    implements
        Builder<PasscodeSettingsViewModel, PasscodeSettingsViewModelBuilder> {
  _$PasscodeSettingsViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _isScreenBlockingEnabled;
  bool? get isScreenBlockingEnabled => _$this._isScreenBlockingEnabled;
  set isScreenBlockingEnabled(bool? isScreenBlockingEnabled) =>
      _$this._isScreenBlockingEnabled = isScreenBlockingEnabled;

  bool? _isBiometricAvailable;
  bool? get isBiometricAvailable => _$this._isBiometricAvailable;
  set isBiometricAvailable(bool? isBiometricAvailable) =>
      _$this._isBiometricAvailable = isBiometricAvailable;

  String? _screenBlockingOptionTitle;
  String? get screenBlockingOptionTitle => _$this._screenBlockingOptionTitle;
  set screenBlockingOptionTitle(String? screenBlockingOptionTitle) =>
      _$this._screenBlockingOptionTitle = screenBlockingOptionTitle;

  FunctionHolder? _screenBlockingToogleCommand;
  FunctionHolder? get screenBlockingToogleCommand =>
      _$this._screenBlockingToogleCommand;
  set screenBlockingToogleCommand(
          FunctionHolder? screenBlockingToogleCommand) =>
      _$this._screenBlockingToogleCommand = screenBlockingToogleCommand;

  String? _screenBlockingExplanation;
  String? get screenBlockingExplanation => _$this._screenBlockingExplanation;
  set screenBlockingExplanation(String? screenBlockingExplanation) =>
      _$this._screenBlockingExplanation = screenBlockingExplanation;

  bool? _isBiometricEnabled;
  bool? get isBiometricEnabled => _$this._isBiometricEnabled;
  set isBiometricEnabled(bool? isBiometricEnabled) =>
      _$this._isBiometricEnabled = isBiometricEnabled;

  bool? _isBiometricActive;
  bool? get isBiometricActive => _$this._isBiometricActive;
  set isBiometricActive(bool? isBiometricActive) =>
      _$this._isBiometricActive = isBiometricActive;

  String? _biometricOptionTitle;
  String? get biometricOptionTitle => _$this._biometricOptionTitle;
  set biometricOptionTitle(String? biometricOptionTitle) =>
      _$this._biometricOptionTitle = biometricOptionTitle;

  FunctionHolder? _biometricToogleCommand;
  FunctionHolder? get biometricToogleCommand => _$this._biometricToogleCommand;
  set biometricToogleCommand(FunctionHolder? biometricToogleCommand) =>
      _$this._biometricToogleCommand = biometricToogleCommand;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  String? _requireAfterOptionTitle;
  String? get requireAfterOptionTitle => _$this._requireAfterOptionTitle;
  set requireAfterOptionTitle(String? requireAfterOptionTitle) =>
      _$this._requireAfterOptionTitle = requireAfterOptionTitle;

  String? _requireAfterOptionValue;
  String? get requireAfterOptionValue => _$this._requireAfterOptionValue;
  set requireAfterOptionValue(String? requireAfterOptionValue) =>
      _$this._requireAfterOptionValue = requireAfterOptionValue;

  FunctionHolder? _requireAfterCommand;
  FunctionHolder? get requireAfterCommand => _$this._requireAfterCommand;
  set requireAfterCommand(FunctionHolder? requireAfterCommand) =>
      _$this._requireAfterCommand = requireAfterCommand;

  PasscodeSettingsViewModelBuilder();

  PasscodeSettingsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _isScreenBlockingEnabled = $v.isScreenBlockingEnabled;
      _isBiometricAvailable = $v.isBiometricAvailable;
      _screenBlockingOptionTitle = $v.screenBlockingOptionTitle;
      _screenBlockingToogleCommand = $v.screenBlockingToogleCommand;
      _screenBlockingExplanation = $v.screenBlockingExplanation;
      _isBiometricEnabled = $v.isBiometricEnabled;
      _isBiometricActive = $v.isBiometricActive;
      _biometricOptionTitle = $v.biometricOptionTitle;
      _biometricToogleCommand = $v.biometricToogleCommand;
      _backCommand = $v.backCommand;
      _requireAfterOptionTitle = $v.requireAfterOptionTitle;
      _requireAfterOptionValue = $v.requireAfterOptionValue;
      _requireAfterCommand = $v.requireAfterCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasscodeSettingsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasscodeSettingsViewModel;
  }

  @override
  void update(void Function(PasscodeSettingsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasscodeSettingsViewModel build() => _build();

  _$PasscodeSettingsViewModel _build() {
    final _$result = _$v ??
        new _$PasscodeSettingsViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'PasscodeSettingsViewModel', 'title'),
            isScreenBlockingEnabled: BuiltValueNullFieldError.checkNotNull(
                isScreenBlockingEnabled, r'PasscodeSettingsViewModel', 'isScreenBlockingEnabled'),
            isBiometricAvailable: BuiltValueNullFieldError.checkNotNull(
                isBiometricAvailable, r'PasscodeSettingsViewModel', 'isBiometricAvailable'),
            screenBlockingOptionTitle: BuiltValueNullFieldError.checkNotNull(
                screenBlockingOptionTitle, r'PasscodeSettingsViewModel', 'screenBlockingOptionTitle'),
            screenBlockingToogleCommand: BuiltValueNullFieldError.checkNotNull(
                screenBlockingToogleCommand, r'PasscodeSettingsViewModel', 'screenBlockingToogleCommand'),
            screenBlockingExplanation: BuiltValueNullFieldError.checkNotNull(
                screenBlockingExplanation, r'PasscodeSettingsViewModel', 'screenBlockingExplanation'),
            isBiometricEnabled: BuiltValueNullFieldError.checkNotNull(
                isBiometricEnabled, r'PasscodeSettingsViewModel', 'isBiometricEnabled'),
            isBiometricActive: BuiltValueNullFieldError.checkNotNull(isBiometricActive, r'PasscodeSettingsViewModel', 'isBiometricActive'),
            biometricOptionTitle: BuiltValueNullFieldError.checkNotNull(biometricOptionTitle, r'PasscodeSettingsViewModel', 'biometricOptionTitle'),
            biometricToogleCommand: BuiltValueNullFieldError.checkNotNull(biometricToogleCommand, r'PasscodeSettingsViewModel', 'biometricToogleCommand'),
            backCommand: BuiltValueNullFieldError.checkNotNull(backCommand, r'PasscodeSettingsViewModel', 'backCommand'),
            requireAfterOptionTitle: BuiltValueNullFieldError.checkNotNull(requireAfterOptionTitle, r'PasscodeSettingsViewModel', 'requireAfterOptionTitle'),
            requireAfterOptionValue: BuiltValueNullFieldError.checkNotNull(requireAfterOptionValue, r'PasscodeSettingsViewModel', 'requireAfterOptionValue'),
            requireAfterCommand: BuiltValueNullFieldError.checkNotNull(requireAfterCommand, r'PasscodeSettingsViewModel', 'requireAfterCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
