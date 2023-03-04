// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPasswordViewModel extends ForgotPasswordViewModel {
  @override
  final String title;
  @override
  final String forgotPasswordButtonText;
  @override
  final String instructionText;
  @override
  final String? email;
  @override
  final String emailLabel;
  @override
  final String emailPlaceholder;
  @override
  final String requiredFiledValidator;
  @override
  final String invalidEmailValidator;
  @override
  final String emailRegex;
  @override
  final String loadingMessage;
  @override
  final FunctionHolder backCommand;
  @override
  final TypedFunctionHolder<String>? forgotPassword;
  @override
  final bool isLoading;

  factory _$ForgotPasswordViewModel(
          [void Function(ForgotPasswordViewModelBuilder)? updates]) =>
      (new ForgotPasswordViewModelBuilder()..update(updates))._build();

  _$ForgotPasswordViewModel._(
      {required this.title,
      required this.forgotPasswordButtonText,
      required this.instructionText,
      this.email,
      required this.emailLabel,
      required this.emailPlaceholder,
      required this.requiredFiledValidator,
      required this.invalidEmailValidator,
      required this.emailRegex,
      required this.loadingMessage,
      required this.backCommand,
      this.forgotPassword,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'ForgotPasswordViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(forgotPasswordButtonText,
        r'ForgotPasswordViewModel', 'forgotPasswordButtonText');
    BuiltValueNullFieldError.checkNotNull(
        instructionText, r'ForgotPasswordViewModel', 'instructionText');
    BuiltValueNullFieldError.checkNotNull(
        emailLabel, r'ForgotPasswordViewModel', 'emailLabel');
    BuiltValueNullFieldError.checkNotNull(
        emailPlaceholder, r'ForgotPasswordViewModel', 'emailPlaceholder');
    BuiltValueNullFieldError.checkNotNull(requiredFiledValidator,
        r'ForgotPasswordViewModel', 'requiredFiledValidator');
    BuiltValueNullFieldError.checkNotNull(invalidEmailValidator,
        r'ForgotPasswordViewModel', 'invalidEmailValidator');
    BuiltValueNullFieldError.checkNotNull(
        emailRegex, r'ForgotPasswordViewModel', 'emailRegex');
    BuiltValueNullFieldError.checkNotNull(
        loadingMessage, r'ForgotPasswordViewModel', 'loadingMessage');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'ForgotPasswordViewModel', 'backCommand');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'ForgotPasswordViewModel', 'isLoading');
  }

  @override
  ForgotPasswordViewModel rebuild(
          void Function(ForgotPasswordViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordViewModelBuilder toBuilder() =>
      new ForgotPasswordViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPasswordViewModel &&
        title == other.title &&
        forgotPasswordButtonText == other.forgotPasswordButtonText &&
        instructionText == other.instructionText &&
        email == other.email &&
        emailLabel == other.emailLabel &&
        emailPlaceholder == other.emailPlaceholder &&
        requiredFiledValidator == other.requiredFiledValidator &&
        invalidEmailValidator == other.invalidEmailValidator &&
        emailRegex == other.emailRegex &&
        loadingMessage == other.loadingMessage &&
        backCommand == other.backCommand &&
        forgotPassword == other.forgotPassword &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, forgotPasswordButtonText.hashCode);
    _$hash = $jc(_$hash, instructionText.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, emailLabel.hashCode);
    _$hash = $jc(_$hash, emailPlaceholder.hashCode);
    _$hash = $jc(_$hash, requiredFiledValidator.hashCode);
    _$hash = $jc(_$hash, invalidEmailValidator.hashCode);
    _$hash = $jc(_$hash, emailRegex.hashCode);
    _$hash = $jc(_$hash, loadingMessage.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jc(_$hash, forgotPassword.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForgotPasswordViewModel')
          ..add('title', title)
          ..add('forgotPasswordButtonText', forgotPasswordButtonText)
          ..add('instructionText', instructionText)
          ..add('email', email)
          ..add('emailLabel', emailLabel)
          ..add('emailPlaceholder', emailPlaceholder)
          ..add('requiredFiledValidator', requiredFiledValidator)
          ..add('invalidEmailValidator', invalidEmailValidator)
          ..add('emailRegex', emailRegex)
          ..add('loadingMessage', loadingMessage)
          ..add('backCommand', backCommand)
          ..add('forgotPassword', forgotPassword)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class ForgotPasswordViewModelBuilder
    implements
        Builder<ForgotPasswordViewModel, ForgotPasswordViewModelBuilder> {
  _$ForgotPasswordViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _forgotPasswordButtonText;
  String? get forgotPasswordButtonText => _$this._forgotPasswordButtonText;
  set forgotPasswordButtonText(String? forgotPasswordButtonText) =>
      _$this._forgotPasswordButtonText = forgotPasswordButtonText;

  String? _instructionText;
  String? get instructionText => _$this._instructionText;
  set instructionText(String? instructionText) =>
      _$this._instructionText = instructionText;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _emailLabel;
  String? get emailLabel => _$this._emailLabel;
  set emailLabel(String? emailLabel) => _$this._emailLabel = emailLabel;

  String? _emailPlaceholder;
  String? get emailPlaceholder => _$this._emailPlaceholder;
  set emailPlaceholder(String? emailPlaceholder) =>
      _$this._emailPlaceholder = emailPlaceholder;

  String? _requiredFiledValidator;
  String? get requiredFiledValidator => _$this._requiredFiledValidator;
  set requiredFiledValidator(String? requiredFiledValidator) =>
      _$this._requiredFiledValidator = requiredFiledValidator;

  String? _invalidEmailValidator;
  String? get invalidEmailValidator => _$this._invalidEmailValidator;
  set invalidEmailValidator(String? invalidEmailValidator) =>
      _$this._invalidEmailValidator = invalidEmailValidator;

  String? _emailRegex;
  String? get emailRegex => _$this._emailRegex;
  set emailRegex(String? emailRegex) => _$this._emailRegex = emailRegex;

  String? _loadingMessage;
  String? get loadingMessage => _$this._loadingMessage;
  set loadingMessage(String? loadingMessage) =>
      _$this._loadingMessage = loadingMessage;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  TypedFunctionHolder<String>? _forgotPassword;
  TypedFunctionHolder<String>? get forgotPassword => _$this._forgotPassword;
  set forgotPassword(TypedFunctionHolder<String>? forgotPassword) =>
      _$this._forgotPassword = forgotPassword;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  ForgotPasswordViewModelBuilder();

  ForgotPasswordViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _forgotPasswordButtonText = $v.forgotPasswordButtonText;
      _instructionText = $v.instructionText;
      _email = $v.email;
      _emailLabel = $v.emailLabel;
      _emailPlaceholder = $v.emailPlaceholder;
      _requiredFiledValidator = $v.requiredFiledValidator;
      _invalidEmailValidator = $v.invalidEmailValidator;
      _emailRegex = $v.emailRegex;
      _loadingMessage = $v.loadingMessage;
      _backCommand = $v.backCommand;
      _forgotPassword = $v.forgotPassword;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPasswordViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForgotPasswordViewModel;
  }

  @override
  void update(void Function(ForgotPasswordViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgotPasswordViewModel build() => _build();

  _$ForgotPasswordViewModel _build() {
    final _$result = _$v ??
        new _$ForgotPasswordViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ForgotPasswordViewModel', 'title'),
            forgotPasswordButtonText: BuiltValueNullFieldError.checkNotNull(
                forgotPasswordButtonText, r'ForgotPasswordViewModel', 'forgotPasswordButtonText'),
            instructionText: BuiltValueNullFieldError.checkNotNull(
                instructionText, r'ForgotPasswordViewModel', 'instructionText'),
            email: email,
            emailLabel: BuiltValueNullFieldError.checkNotNull(
                emailLabel, r'ForgotPasswordViewModel', 'emailLabel'),
            emailPlaceholder: BuiltValueNullFieldError.checkNotNull(
                emailPlaceholder, r'ForgotPasswordViewModel', 'emailPlaceholder'),
            requiredFiledValidator: BuiltValueNullFieldError.checkNotNull(
                requiredFiledValidator, r'ForgotPasswordViewModel', 'requiredFiledValidator'),
            invalidEmailValidator: BuiltValueNullFieldError.checkNotNull(
                invalidEmailValidator, r'ForgotPasswordViewModel', 'invalidEmailValidator'),
            emailRegex: BuiltValueNullFieldError.checkNotNull(emailRegex, r'ForgotPasswordViewModel', 'emailRegex'),
            loadingMessage: BuiltValueNullFieldError.checkNotNull(loadingMessage, r'ForgotPasswordViewModel', 'loadingMessage'),
            backCommand: BuiltValueNullFieldError.checkNotNull(backCommand, r'ForgotPasswordViewModel', 'backCommand'),
            forgotPassword: forgotPassword,
            isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, r'ForgotPasswordViewModel', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
