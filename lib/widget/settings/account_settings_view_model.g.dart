// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_settings_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountSettingsViewModel extends AccountSettingsViewModel {
  @override
  final String title;
  @override
  final String nameOptionTitle;
  @override
  final String nameOptionValue;
  @override
  final String emailOptionTitle;
  @override
  final String emailOptionValue;
  @override
  final String logoutOptionTitle;
  @override
  final String accountExplanation;
  @override
  final FunctionHolder logoutCommand;
  @override
  final FunctionHolder backCommand;

  factory _$AccountSettingsViewModel(
          [void Function(AccountSettingsViewModelBuilder)? updates]) =>
      (new AccountSettingsViewModelBuilder()..update(updates))._build();

  _$AccountSettingsViewModel._(
      {required this.title,
      required this.nameOptionTitle,
      required this.nameOptionValue,
      required this.emailOptionTitle,
      required this.emailOptionValue,
      required this.logoutOptionTitle,
      required this.accountExplanation,
      required this.logoutCommand,
      required this.backCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'AccountSettingsViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        nameOptionTitle, r'AccountSettingsViewModel', 'nameOptionTitle');
    BuiltValueNullFieldError.checkNotNull(
        nameOptionValue, r'AccountSettingsViewModel', 'nameOptionValue');
    BuiltValueNullFieldError.checkNotNull(
        emailOptionTitle, r'AccountSettingsViewModel', 'emailOptionTitle');
    BuiltValueNullFieldError.checkNotNull(
        emailOptionValue, r'AccountSettingsViewModel', 'emailOptionValue');
    BuiltValueNullFieldError.checkNotNull(
        logoutOptionTitle, r'AccountSettingsViewModel', 'logoutOptionTitle');
    BuiltValueNullFieldError.checkNotNull(
        accountExplanation, r'AccountSettingsViewModel', 'accountExplanation');
    BuiltValueNullFieldError.checkNotNull(
        logoutCommand, r'AccountSettingsViewModel', 'logoutCommand');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'AccountSettingsViewModel', 'backCommand');
  }

  @override
  AccountSettingsViewModel rebuild(
          void Function(AccountSettingsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountSettingsViewModelBuilder toBuilder() =>
      new AccountSettingsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountSettingsViewModel &&
        title == other.title &&
        nameOptionTitle == other.nameOptionTitle &&
        nameOptionValue == other.nameOptionValue &&
        emailOptionTitle == other.emailOptionTitle &&
        emailOptionValue == other.emailOptionValue &&
        logoutOptionTitle == other.logoutOptionTitle &&
        accountExplanation == other.accountExplanation &&
        logoutCommand == other.logoutCommand &&
        backCommand == other.backCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, nameOptionTitle.hashCode);
    _$hash = $jc(_$hash, nameOptionValue.hashCode);
    _$hash = $jc(_$hash, emailOptionTitle.hashCode);
    _$hash = $jc(_$hash, emailOptionValue.hashCode);
    _$hash = $jc(_$hash, logoutOptionTitle.hashCode);
    _$hash = $jc(_$hash, accountExplanation.hashCode);
    _$hash = $jc(_$hash, logoutCommand.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountSettingsViewModel')
          ..add('title', title)
          ..add('nameOptionTitle', nameOptionTitle)
          ..add('nameOptionValue', nameOptionValue)
          ..add('emailOptionTitle', emailOptionTitle)
          ..add('emailOptionValue', emailOptionValue)
          ..add('logoutOptionTitle', logoutOptionTitle)
          ..add('accountExplanation', accountExplanation)
          ..add('logoutCommand', logoutCommand)
          ..add('backCommand', backCommand))
        .toString();
  }
}

class AccountSettingsViewModelBuilder
    implements
        Builder<AccountSettingsViewModel, AccountSettingsViewModelBuilder> {
  _$AccountSettingsViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _nameOptionTitle;
  String? get nameOptionTitle => _$this._nameOptionTitle;
  set nameOptionTitle(String? nameOptionTitle) =>
      _$this._nameOptionTitle = nameOptionTitle;

  String? _nameOptionValue;
  String? get nameOptionValue => _$this._nameOptionValue;
  set nameOptionValue(String? nameOptionValue) =>
      _$this._nameOptionValue = nameOptionValue;

  String? _emailOptionTitle;
  String? get emailOptionTitle => _$this._emailOptionTitle;
  set emailOptionTitle(String? emailOptionTitle) =>
      _$this._emailOptionTitle = emailOptionTitle;

  String? _emailOptionValue;
  String? get emailOptionValue => _$this._emailOptionValue;
  set emailOptionValue(String? emailOptionValue) =>
      _$this._emailOptionValue = emailOptionValue;

  String? _logoutOptionTitle;
  String? get logoutOptionTitle => _$this._logoutOptionTitle;
  set logoutOptionTitle(String? logoutOptionTitle) =>
      _$this._logoutOptionTitle = logoutOptionTitle;

  String? _accountExplanation;
  String? get accountExplanation => _$this._accountExplanation;
  set accountExplanation(String? accountExplanation) =>
      _$this._accountExplanation = accountExplanation;

  FunctionHolder? _logoutCommand;
  FunctionHolder? get logoutCommand => _$this._logoutCommand;
  set logoutCommand(FunctionHolder? logoutCommand) =>
      _$this._logoutCommand = logoutCommand;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  AccountSettingsViewModelBuilder();

  AccountSettingsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _nameOptionTitle = $v.nameOptionTitle;
      _nameOptionValue = $v.nameOptionValue;
      _emailOptionTitle = $v.emailOptionTitle;
      _emailOptionValue = $v.emailOptionValue;
      _logoutOptionTitle = $v.logoutOptionTitle;
      _accountExplanation = $v.accountExplanation;
      _logoutCommand = $v.logoutCommand;
      _backCommand = $v.backCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountSettingsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountSettingsViewModel;
  }

  @override
  void update(void Function(AccountSettingsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountSettingsViewModel build() => _build();

  _$AccountSettingsViewModel _build() {
    final _$result = _$v ??
        new _$AccountSettingsViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'AccountSettingsViewModel', 'title'),
            nameOptionTitle: BuiltValueNullFieldError.checkNotNull(
                nameOptionTitle, r'AccountSettingsViewModel', 'nameOptionTitle'),
            nameOptionValue: BuiltValueNullFieldError.checkNotNull(
                nameOptionValue, r'AccountSettingsViewModel', 'nameOptionValue'),
            emailOptionTitle: BuiltValueNullFieldError.checkNotNull(
                emailOptionTitle, r'AccountSettingsViewModel', 'emailOptionTitle'),
            emailOptionValue: BuiltValueNullFieldError.checkNotNull(
                emailOptionValue, r'AccountSettingsViewModel', 'emailOptionValue'),
            logoutOptionTitle: BuiltValueNullFieldError.checkNotNull(
                logoutOptionTitle, r'AccountSettingsViewModel', 'logoutOptionTitle'),
            accountExplanation: BuiltValueNullFieldError.checkNotNull(
                accountExplanation, r'AccountSettingsViewModel', 'accountExplanation'),
            logoutCommand:
                BuiltValueNullFieldError.checkNotNull(logoutCommand, r'AccountSettingsViewModel', 'logoutCommand'),
            backCommand: BuiltValueNullFieldError.checkNotNull(backCommand, r'AccountSettingsViewModel', 'backCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
