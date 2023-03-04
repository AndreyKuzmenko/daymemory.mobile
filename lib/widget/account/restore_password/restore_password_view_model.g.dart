// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_password_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestorePasswordViewModel extends RestorePasswordViewModel {
  @override
  final String title;
  @override
  final String changePasswordButtonText;
  @override
  final String instructionText;
  @override
  final String passwordLabel;
  @override
  final String passwordPlaceholder;
  @override
  final String codeLabel;
  @override
  final String codePlaceholder;
  @override
  final String requiredFiledValidator;
  @override
  final String loadingMessage;
  @override
  final FunctionHolder backCommand;
  @override
  final TypedFunctionHolder<RestorePasswordData>? changePassword;
  @override
  final bool isLoading;

  factory _$RestorePasswordViewModel(
          [void Function(RestorePasswordViewModelBuilder)? updates]) =>
      (new RestorePasswordViewModelBuilder()..update(updates))._build();

  _$RestorePasswordViewModel._(
      {required this.title,
      required this.changePasswordButtonText,
      required this.instructionText,
      required this.passwordLabel,
      required this.passwordPlaceholder,
      required this.codeLabel,
      required this.codePlaceholder,
      required this.requiredFiledValidator,
      required this.loadingMessage,
      required this.backCommand,
      this.changePassword,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'RestorePasswordViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(changePasswordButtonText,
        r'RestorePasswordViewModel', 'changePasswordButtonText');
    BuiltValueNullFieldError.checkNotNull(
        instructionText, r'RestorePasswordViewModel', 'instructionText');
    BuiltValueNullFieldError.checkNotNull(
        passwordLabel, r'RestorePasswordViewModel', 'passwordLabel');
    BuiltValueNullFieldError.checkNotNull(passwordPlaceholder,
        r'RestorePasswordViewModel', 'passwordPlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        codeLabel, r'RestorePasswordViewModel', 'codeLabel');
    BuiltValueNullFieldError.checkNotNull(
        codePlaceholder, r'RestorePasswordViewModel', 'codePlaceholder');
    BuiltValueNullFieldError.checkNotNull(requiredFiledValidator,
        r'RestorePasswordViewModel', 'requiredFiledValidator');
    BuiltValueNullFieldError.checkNotNull(
        loadingMessage, r'RestorePasswordViewModel', 'loadingMessage');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'RestorePasswordViewModel', 'backCommand');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'RestorePasswordViewModel', 'isLoading');
  }

  @override
  RestorePasswordViewModel rebuild(
          void Function(RestorePasswordViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestorePasswordViewModelBuilder toBuilder() =>
      new RestorePasswordViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestorePasswordViewModel &&
        title == other.title &&
        changePasswordButtonText == other.changePasswordButtonText &&
        instructionText == other.instructionText &&
        passwordLabel == other.passwordLabel &&
        passwordPlaceholder == other.passwordPlaceholder &&
        codeLabel == other.codeLabel &&
        codePlaceholder == other.codePlaceholder &&
        requiredFiledValidator == other.requiredFiledValidator &&
        loadingMessage == other.loadingMessage &&
        backCommand == other.backCommand &&
        changePassword == other.changePassword &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, changePasswordButtonText.hashCode);
    _$hash = $jc(_$hash, instructionText.hashCode);
    _$hash = $jc(_$hash, passwordLabel.hashCode);
    _$hash = $jc(_$hash, passwordPlaceholder.hashCode);
    _$hash = $jc(_$hash, codeLabel.hashCode);
    _$hash = $jc(_$hash, codePlaceholder.hashCode);
    _$hash = $jc(_$hash, requiredFiledValidator.hashCode);
    _$hash = $jc(_$hash, loadingMessage.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jc(_$hash, changePassword.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestorePasswordViewModel')
          ..add('title', title)
          ..add('changePasswordButtonText', changePasswordButtonText)
          ..add('instructionText', instructionText)
          ..add('passwordLabel', passwordLabel)
          ..add('passwordPlaceholder', passwordPlaceholder)
          ..add('codeLabel', codeLabel)
          ..add('codePlaceholder', codePlaceholder)
          ..add('requiredFiledValidator', requiredFiledValidator)
          ..add('loadingMessage', loadingMessage)
          ..add('backCommand', backCommand)
          ..add('changePassword', changePassword)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class RestorePasswordViewModelBuilder
    implements
        Builder<RestorePasswordViewModel, RestorePasswordViewModelBuilder> {
  _$RestorePasswordViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _changePasswordButtonText;
  String? get changePasswordButtonText => _$this._changePasswordButtonText;
  set changePasswordButtonText(String? changePasswordButtonText) =>
      _$this._changePasswordButtonText = changePasswordButtonText;

  String? _instructionText;
  String? get instructionText => _$this._instructionText;
  set instructionText(String? instructionText) =>
      _$this._instructionText = instructionText;

  String? _passwordLabel;
  String? get passwordLabel => _$this._passwordLabel;
  set passwordLabel(String? passwordLabel) =>
      _$this._passwordLabel = passwordLabel;

  String? _passwordPlaceholder;
  String? get passwordPlaceholder => _$this._passwordPlaceholder;
  set passwordPlaceholder(String? passwordPlaceholder) =>
      _$this._passwordPlaceholder = passwordPlaceholder;

  String? _codeLabel;
  String? get codeLabel => _$this._codeLabel;
  set codeLabel(String? codeLabel) => _$this._codeLabel = codeLabel;

  String? _codePlaceholder;
  String? get codePlaceholder => _$this._codePlaceholder;
  set codePlaceholder(String? codePlaceholder) =>
      _$this._codePlaceholder = codePlaceholder;

  String? _requiredFiledValidator;
  String? get requiredFiledValidator => _$this._requiredFiledValidator;
  set requiredFiledValidator(String? requiredFiledValidator) =>
      _$this._requiredFiledValidator = requiredFiledValidator;

  String? _loadingMessage;
  String? get loadingMessage => _$this._loadingMessage;
  set loadingMessage(String? loadingMessage) =>
      _$this._loadingMessage = loadingMessage;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  TypedFunctionHolder<RestorePasswordData>? _changePassword;
  TypedFunctionHolder<RestorePasswordData>? get changePassword =>
      _$this._changePassword;
  set changePassword(
          TypedFunctionHolder<RestorePasswordData>? changePassword) =>
      _$this._changePassword = changePassword;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  RestorePasswordViewModelBuilder();

  RestorePasswordViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _changePasswordButtonText = $v.changePasswordButtonText;
      _instructionText = $v.instructionText;
      _passwordLabel = $v.passwordLabel;
      _passwordPlaceholder = $v.passwordPlaceholder;
      _codeLabel = $v.codeLabel;
      _codePlaceholder = $v.codePlaceholder;
      _requiredFiledValidator = $v.requiredFiledValidator;
      _loadingMessage = $v.loadingMessage;
      _backCommand = $v.backCommand;
      _changePassword = $v.changePassword;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestorePasswordViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestorePasswordViewModel;
  }

  @override
  void update(void Function(RestorePasswordViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestorePasswordViewModel build() => _build();

  _$RestorePasswordViewModel _build() {
    final _$result = _$v ??
        new _$RestorePasswordViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'RestorePasswordViewModel', 'title'),
            changePasswordButtonText: BuiltValueNullFieldError.checkNotNull(
                changePasswordButtonText, r'RestorePasswordViewModel', 'changePasswordButtonText'),
            instructionText: BuiltValueNullFieldError.checkNotNull(
                instructionText, r'RestorePasswordViewModel', 'instructionText'),
            passwordLabel: BuiltValueNullFieldError.checkNotNull(
                passwordLabel, r'RestorePasswordViewModel', 'passwordLabel'),
            passwordPlaceholder: BuiltValueNullFieldError.checkNotNull(
                passwordPlaceholder, r'RestorePasswordViewModel', 'passwordPlaceholder'),
            codeLabel: BuiltValueNullFieldError.checkNotNull(
                codeLabel, r'RestorePasswordViewModel', 'codeLabel'),
            codePlaceholder: BuiltValueNullFieldError.checkNotNull(
                codePlaceholder, r'RestorePasswordViewModel', 'codePlaceholder'),
            requiredFiledValidator: BuiltValueNullFieldError.checkNotNull(requiredFiledValidator, r'RestorePasswordViewModel', 'requiredFiledValidator'),
            loadingMessage: BuiltValueNullFieldError.checkNotNull(loadingMessage, r'RestorePasswordViewModel', 'loadingMessage'),
            backCommand: BuiltValueNullFieldError.checkNotNull(backCommand, r'RestorePasswordViewModel', 'backCommand'),
            changePassword: changePassword,
            isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, r'RestorePasswordViewModel', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
