// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignupViewModel extends SignupViewModel {
  @override
  final String title;
  @override
  final String signButtonText;
  @override
  final String privacyPolicyLink;
  @override
  final String termsOfUseLink;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String emailLabel;
  @override
  final String emailPlaceholder;
  @override
  final String passwordLabel;
  @override
  final String passwordPlaceholder;
  @override
  final String firstNameLabel;
  @override
  final String firstNamePlaceholder;
  @override
  final String lastNameLabel;
  @override
  final String lastNamePlaceholder;
  @override
  final String requiredFiledValidator;
  @override
  final String shortPasswordValidator;
  @override
  final String invalidEmailValidator;
  @override
  final String emailRegex;
  @override
  final String termsOfUseLabel;
  @override
  final String privacyPolicyLabel;
  @override
  final String andSeparatorLabel;
  @override
  final String loadingMessage;
  @override
  final FunctionHolder backCommand;
  @override
  final TypedFunctionHolder<SignupWithEmailData>? signupWithCredentials;
  @override
  final bool isLoading;

  factory _$SignupViewModel([void Function(SignupViewModelBuilder)? updates]) =>
      (new SignupViewModelBuilder()..update(updates))._build();

  _$SignupViewModel._(
      {required this.title,
      required this.signButtonText,
      required this.privacyPolicyLink,
      required this.termsOfUseLink,
      this.email,
      this.password,
      this.firstName,
      this.lastName,
      required this.emailLabel,
      required this.emailPlaceholder,
      required this.passwordLabel,
      required this.passwordPlaceholder,
      required this.firstNameLabel,
      required this.firstNamePlaceholder,
      required this.lastNameLabel,
      required this.lastNamePlaceholder,
      required this.requiredFiledValidator,
      required this.shortPasswordValidator,
      required this.invalidEmailValidator,
      required this.emailRegex,
      required this.termsOfUseLabel,
      required this.privacyPolicyLabel,
      required this.andSeparatorLabel,
      required this.loadingMessage,
      required this.backCommand,
      this.signupWithCredentials,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'SignupViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        signButtonText, r'SignupViewModel', 'signButtonText');
    BuiltValueNullFieldError.checkNotNull(
        privacyPolicyLink, r'SignupViewModel', 'privacyPolicyLink');
    BuiltValueNullFieldError.checkNotNull(
        termsOfUseLink, r'SignupViewModel', 'termsOfUseLink');
    BuiltValueNullFieldError.checkNotNull(
        emailLabel, r'SignupViewModel', 'emailLabel');
    BuiltValueNullFieldError.checkNotNull(
        emailPlaceholder, r'SignupViewModel', 'emailPlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        passwordLabel, r'SignupViewModel', 'passwordLabel');
    BuiltValueNullFieldError.checkNotNull(
        passwordPlaceholder, r'SignupViewModel', 'passwordPlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        firstNameLabel, r'SignupViewModel', 'firstNameLabel');
    BuiltValueNullFieldError.checkNotNull(
        firstNamePlaceholder, r'SignupViewModel', 'firstNamePlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        lastNameLabel, r'SignupViewModel', 'lastNameLabel');
    BuiltValueNullFieldError.checkNotNull(
        lastNamePlaceholder, r'SignupViewModel', 'lastNamePlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        requiredFiledValidator, r'SignupViewModel', 'requiredFiledValidator');
    BuiltValueNullFieldError.checkNotNull(
        shortPasswordValidator, r'SignupViewModel', 'shortPasswordValidator');
    BuiltValueNullFieldError.checkNotNull(
        invalidEmailValidator, r'SignupViewModel', 'invalidEmailValidator');
    BuiltValueNullFieldError.checkNotNull(
        emailRegex, r'SignupViewModel', 'emailRegex');
    BuiltValueNullFieldError.checkNotNull(
        termsOfUseLabel, r'SignupViewModel', 'termsOfUseLabel');
    BuiltValueNullFieldError.checkNotNull(
        privacyPolicyLabel, r'SignupViewModel', 'privacyPolicyLabel');
    BuiltValueNullFieldError.checkNotNull(
        andSeparatorLabel, r'SignupViewModel', 'andSeparatorLabel');
    BuiltValueNullFieldError.checkNotNull(
        loadingMessage, r'SignupViewModel', 'loadingMessage');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'SignupViewModel', 'backCommand');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'SignupViewModel', 'isLoading');
  }

  @override
  SignupViewModel rebuild(void Function(SignupViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupViewModelBuilder toBuilder() =>
      new SignupViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupViewModel &&
        title == other.title &&
        signButtonText == other.signButtonText &&
        privacyPolicyLink == other.privacyPolicyLink &&
        termsOfUseLink == other.termsOfUseLink &&
        email == other.email &&
        password == other.password &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        emailLabel == other.emailLabel &&
        emailPlaceholder == other.emailPlaceholder &&
        passwordLabel == other.passwordLabel &&
        passwordPlaceholder == other.passwordPlaceholder &&
        firstNameLabel == other.firstNameLabel &&
        firstNamePlaceholder == other.firstNamePlaceholder &&
        lastNameLabel == other.lastNameLabel &&
        lastNamePlaceholder == other.lastNamePlaceholder &&
        requiredFiledValidator == other.requiredFiledValidator &&
        shortPasswordValidator == other.shortPasswordValidator &&
        invalidEmailValidator == other.invalidEmailValidator &&
        emailRegex == other.emailRegex &&
        termsOfUseLabel == other.termsOfUseLabel &&
        privacyPolicyLabel == other.privacyPolicyLabel &&
        andSeparatorLabel == other.andSeparatorLabel &&
        loadingMessage == other.loadingMessage &&
        backCommand == other.backCommand &&
        signupWithCredentials == other.signupWithCredentials &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, signButtonText.hashCode);
    _$hash = $jc(_$hash, privacyPolicyLink.hashCode);
    _$hash = $jc(_$hash, termsOfUseLink.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, emailLabel.hashCode);
    _$hash = $jc(_$hash, emailPlaceholder.hashCode);
    _$hash = $jc(_$hash, passwordLabel.hashCode);
    _$hash = $jc(_$hash, passwordPlaceholder.hashCode);
    _$hash = $jc(_$hash, firstNameLabel.hashCode);
    _$hash = $jc(_$hash, firstNamePlaceholder.hashCode);
    _$hash = $jc(_$hash, lastNameLabel.hashCode);
    _$hash = $jc(_$hash, lastNamePlaceholder.hashCode);
    _$hash = $jc(_$hash, requiredFiledValidator.hashCode);
    _$hash = $jc(_$hash, shortPasswordValidator.hashCode);
    _$hash = $jc(_$hash, invalidEmailValidator.hashCode);
    _$hash = $jc(_$hash, emailRegex.hashCode);
    _$hash = $jc(_$hash, termsOfUseLabel.hashCode);
    _$hash = $jc(_$hash, privacyPolicyLabel.hashCode);
    _$hash = $jc(_$hash, andSeparatorLabel.hashCode);
    _$hash = $jc(_$hash, loadingMessage.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jc(_$hash, signupWithCredentials.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignupViewModel')
          ..add('title', title)
          ..add('signButtonText', signButtonText)
          ..add('privacyPolicyLink', privacyPolicyLink)
          ..add('termsOfUseLink', termsOfUseLink)
          ..add('email', email)
          ..add('password', password)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('emailLabel', emailLabel)
          ..add('emailPlaceholder', emailPlaceholder)
          ..add('passwordLabel', passwordLabel)
          ..add('passwordPlaceholder', passwordPlaceholder)
          ..add('firstNameLabel', firstNameLabel)
          ..add('firstNamePlaceholder', firstNamePlaceholder)
          ..add('lastNameLabel', lastNameLabel)
          ..add('lastNamePlaceholder', lastNamePlaceholder)
          ..add('requiredFiledValidator', requiredFiledValidator)
          ..add('shortPasswordValidator', shortPasswordValidator)
          ..add('invalidEmailValidator', invalidEmailValidator)
          ..add('emailRegex', emailRegex)
          ..add('termsOfUseLabel', termsOfUseLabel)
          ..add('privacyPolicyLabel', privacyPolicyLabel)
          ..add('andSeparatorLabel', andSeparatorLabel)
          ..add('loadingMessage', loadingMessage)
          ..add('backCommand', backCommand)
          ..add('signupWithCredentials', signupWithCredentials)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class SignupViewModelBuilder
    implements Builder<SignupViewModel, SignupViewModelBuilder> {
  _$SignupViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _signButtonText;
  String? get signButtonText => _$this._signButtonText;
  set signButtonText(String? signButtonText) =>
      _$this._signButtonText = signButtonText;

  String? _privacyPolicyLink;
  String? get privacyPolicyLink => _$this._privacyPolicyLink;
  set privacyPolicyLink(String? privacyPolicyLink) =>
      _$this._privacyPolicyLink = privacyPolicyLink;

  String? _termsOfUseLink;
  String? get termsOfUseLink => _$this._termsOfUseLink;
  set termsOfUseLink(String? termsOfUseLink) =>
      _$this._termsOfUseLink = termsOfUseLink;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _emailLabel;
  String? get emailLabel => _$this._emailLabel;
  set emailLabel(String? emailLabel) => _$this._emailLabel = emailLabel;

  String? _emailPlaceholder;
  String? get emailPlaceholder => _$this._emailPlaceholder;
  set emailPlaceholder(String? emailPlaceholder) =>
      _$this._emailPlaceholder = emailPlaceholder;

  String? _passwordLabel;
  String? get passwordLabel => _$this._passwordLabel;
  set passwordLabel(String? passwordLabel) =>
      _$this._passwordLabel = passwordLabel;

  String? _passwordPlaceholder;
  String? get passwordPlaceholder => _$this._passwordPlaceholder;
  set passwordPlaceholder(String? passwordPlaceholder) =>
      _$this._passwordPlaceholder = passwordPlaceholder;

  String? _firstNameLabel;
  String? get firstNameLabel => _$this._firstNameLabel;
  set firstNameLabel(String? firstNameLabel) =>
      _$this._firstNameLabel = firstNameLabel;

  String? _firstNamePlaceholder;
  String? get firstNamePlaceholder => _$this._firstNamePlaceholder;
  set firstNamePlaceholder(String? firstNamePlaceholder) =>
      _$this._firstNamePlaceholder = firstNamePlaceholder;

  String? _lastNameLabel;
  String? get lastNameLabel => _$this._lastNameLabel;
  set lastNameLabel(String? lastNameLabel) =>
      _$this._lastNameLabel = lastNameLabel;

  String? _lastNamePlaceholder;
  String? get lastNamePlaceholder => _$this._lastNamePlaceholder;
  set lastNamePlaceholder(String? lastNamePlaceholder) =>
      _$this._lastNamePlaceholder = lastNamePlaceholder;

  String? _requiredFiledValidator;
  String? get requiredFiledValidator => _$this._requiredFiledValidator;
  set requiredFiledValidator(String? requiredFiledValidator) =>
      _$this._requiredFiledValidator = requiredFiledValidator;

  String? _shortPasswordValidator;
  String? get shortPasswordValidator => _$this._shortPasswordValidator;
  set shortPasswordValidator(String? shortPasswordValidator) =>
      _$this._shortPasswordValidator = shortPasswordValidator;

  String? _invalidEmailValidator;
  String? get invalidEmailValidator => _$this._invalidEmailValidator;
  set invalidEmailValidator(String? invalidEmailValidator) =>
      _$this._invalidEmailValidator = invalidEmailValidator;

  String? _emailRegex;
  String? get emailRegex => _$this._emailRegex;
  set emailRegex(String? emailRegex) => _$this._emailRegex = emailRegex;

  String? _termsOfUseLabel;
  String? get termsOfUseLabel => _$this._termsOfUseLabel;
  set termsOfUseLabel(String? termsOfUseLabel) =>
      _$this._termsOfUseLabel = termsOfUseLabel;

  String? _privacyPolicyLabel;
  String? get privacyPolicyLabel => _$this._privacyPolicyLabel;
  set privacyPolicyLabel(String? privacyPolicyLabel) =>
      _$this._privacyPolicyLabel = privacyPolicyLabel;

  String? _andSeparatorLabel;
  String? get andSeparatorLabel => _$this._andSeparatorLabel;
  set andSeparatorLabel(String? andSeparatorLabel) =>
      _$this._andSeparatorLabel = andSeparatorLabel;

  String? _loadingMessage;
  String? get loadingMessage => _$this._loadingMessage;
  set loadingMessage(String? loadingMessage) =>
      _$this._loadingMessage = loadingMessage;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  TypedFunctionHolder<SignupWithEmailData>? _signupWithCredentials;
  TypedFunctionHolder<SignupWithEmailData>? get signupWithCredentials =>
      _$this._signupWithCredentials;
  set signupWithCredentials(
          TypedFunctionHolder<SignupWithEmailData>? signupWithCredentials) =>
      _$this._signupWithCredentials = signupWithCredentials;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  SignupViewModelBuilder();

  SignupViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _signButtonText = $v.signButtonText;
      _privacyPolicyLink = $v.privacyPolicyLink;
      _termsOfUseLink = $v.termsOfUseLink;
      _email = $v.email;
      _password = $v.password;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _emailLabel = $v.emailLabel;
      _emailPlaceholder = $v.emailPlaceholder;
      _passwordLabel = $v.passwordLabel;
      _passwordPlaceholder = $v.passwordPlaceholder;
      _firstNameLabel = $v.firstNameLabel;
      _firstNamePlaceholder = $v.firstNamePlaceholder;
      _lastNameLabel = $v.lastNameLabel;
      _lastNamePlaceholder = $v.lastNamePlaceholder;
      _requiredFiledValidator = $v.requiredFiledValidator;
      _shortPasswordValidator = $v.shortPasswordValidator;
      _invalidEmailValidator = $v.invalidEmailValidator;
      _emailRegex = $v.emailRegex;
      _termsOfUseLabel = $v.termsOfUseLabel;
      _privacyPolicyLabel = $v.privacyPolicyLabel;
      _andSeparatorLabel = $v.andSeparatorLabel;
      _loadingMessage = $v.loadingMessage;
      _backCommand = $v.backCommand;
      _signupWithCredentials = $v.signupWithCredentials;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignupViewModel;
  }

  @override
  void update(void Function(SignupViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignupViewModel build() => _build();

  _$SignupViewModel _build() {
    final _$result = _$v ??
        new _$SignupViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'SignupViewModel', 'title'),
            signButtonText: BuiltValueNullFieldError.checkNotNull(
                signButtonText, r'SignupViewModel', 'signButtonText'),
            privacyPolicyLink: BuiltValueNullFieldError.checkNotNull(
                privacyPolicyLink, r'SignupViewModel', 'privacyPolicyLink'),
            termsOfUseLink: BuiltValueNullFieldError.checkNotNull(
                termsOfUseLink, r'SignupViewModel', 'termsOfUseLink'),
            email: email,
            password: password,
            firstName: firstName,
            lastName: lastName,
            emailLabel: BuiltValueNullFieldError.checkNotNull(
                emailLabel, r'SignupViewModel', 'emailLabel'),
            emailPlaceholder: BuiltValueNullFieldError.checkNotNull(
                emailPlaceholder, r'SignupViewModel', 'emailPlaceholder'),
            passwordLabel: BuiltValueNullFieldError.checkNotNull(
                passwordLabel, r'SignupViewModel', 'passwordLabel'),
            passwordPlaceholder:
                BuiltValueNullFieldError.checkNotNull(passwordPlaceholder, r'SignupViewModel', 'passwordPlaceholder'),
            firstNameLabel: BuiltValueNullFieldError.checkNotNull(firstNameLabel, r'SignupViewModel', 'firstNameLabel'),
            firstNamePlaceholder: BuiltValueNullFieldError.checkNotNull(firstNamePlaceholder, r'SignupViewModel', 'firstNamePlaceholder'),
            lastNameLabel: BuiltValueNullFieldError.checkNotNull(lastNameLabel, r'SignupViewModel', 'lastNameLabel'),
            lastNamePlaceholder: BuiltValueNullFieldError.checkNotNull(lastNamePlaceholder, r'SignupViewModel', 'lastNamePlaceholder'),
            requiredFiledValidator: BuiltValueNullFieldError.checkNotNull(requiredFiledValidator, r'SignupViewModel', 'requiredFiledValidator'),
            shortPasswordValidator: BuiltValueNullFieldError.checkNotNull(shortPasswordValidator, r'SignupViewModel', 'shortPasswordValidator'),
            invalidEmailValidator: BuiltValueNullFieldError.checkNotNull(invalidEmailValidator, r'SignupViewModel', 'invalidEmailValidator'),
            emailRegex: BuiltValueNullFieldError.checkNotNull(emailRegex, r'SignupViewModel', 'emailRegex'),
            termsOfUseLabel: BuiltValueNullFieldError.checkNotNull(termsOfUseLabel, r'SignupViewModel', 'termsOfUseLabel'),
            privacyPolicyLabel: BuiltValueNullFieldError.checkNotNull(privacyPolicyLabel, r'SignupViewModel', 'privacyPolicyLabel'),
            andSeparatorLabel: BuiltValueNullFieldError.checkNotNull(andSeparatorLabel, r'SignupViewModel', 'andSeparatorLabel'),
            loadingMessage: BuiltValueNullFieldError.checkNotNull(loadingMessage, r'SignupViewModel', 'loadingMessage'),
            backCommand: BuiltValueNullFieldError.checkNotNull(backCommand, r'SignupViewModel', 'backCommand'),
            signupWithCredentials: signupWithCredentials,
            isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, r'SignupViewModel', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
