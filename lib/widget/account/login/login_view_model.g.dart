// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginViewModel extends LoginViewModel {
  @override
  final String title;
  @override
  final String loginWithEmailText;
  @override
  final String privacyPolicyLink;
  @override
  final String termsOfUseLink;
  @override
  final bool showAppleIdButton;
  @override
  final String emailLabel;
  @override
  final String emailPlaceholder;
  @override
  final String passwordLabel;
  @override
  final String passwordPlaceholder;
  @override
  final String requiredFieldValidator;
  @override
  final String invalidEmailValidator;
  @override
  final String emailRegex;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String termsOfUseLabel;
  @override
  final String privacyPolicyLabel;
  @override
  final String andSeparatorLabel;
  @override
  final String forgotPasswordLabel;
  @override
  final String createAccountLabel;
  @override
  final String loadingMessage;
  @override
  final bool showSocialButtons;
  @override
  final FunctionHolder backCommand;
  @override
  final FunctionHolder forgotPassword;
  @override
  final FunctionHolder createAccount;
  @override
  final FunctionHolder? loginWithApple;
  @override
  final FunctionHolder? loginWithGoogle;
  @override
  final FunctionHolder? loginWithFacebook;
  @override
  final TypedFunctionHolder<LoginWithEmailData>? loginWithCredentials;
  @override
  final bool isLoading;

  factory _$LoginViewModel([void Function(LoginViewModelBuilder)? updates]) =>
      (new LoginViewModelBuilder()..update(updates))._build();

  _$LoginViewModel._(
      {required this.title,
      required this.loginWithEmailText,
      required this.privacyPolicyLink,
      required this.termsOfUseLink,
      required this.showAppleIdButton,
      required this.emailLabel,
      required this.emailPlaceholder,
      required this.passwordLabel,
      required this.passwordPlaceholder,
      required this.requiredFieldValidator,
      required this.invalidEmailValidator,
      required this.emailRegex,
      this.email,
      this.password,
      required this.termsOfUseLabel,
      required this.privacyPolicyLabel,
      required this.andSeparatorLabel,
      required this.forgotPasswordLabel,
      required this.createAccountLabel,
      required this.loadingMessage,
      required this.showSocialButtons,
      required this.backCommand,
      required this.forgotPassword,
      required this.createAccount,
      this.loginWithApple,
      this.loginWithGoogle,
      this.loginWithFacebook,
      this.loginWithCredentials,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'LoginViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        loginWithEmailText, r'LoginViewModel', 'loginWithEmailText');
    BuiltValueNullFieldError.checkNotNull(
        privacyPolicyLink, r'LoginViewModel', 'privacyPolicyLink');
    BuiltValueNullFieldError.checkNotNull(
        termsOfUseLink, r'LoginViewModel', 'termsOfUseLink');
    BuiltValueNullFieldError.checkNotNull(
        showAppleIdButton, r'LoginViewModel', 'showAppleIdButton');
    BuiltValueNullFieldError.checkNotNull(
        emailLabel, r'LoginViewModel', 'emailLabel');
    BuiltValueNullFieldError.checkNotNull(
        emailPlaceholder, r'LoginViewModel', 'emailPlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        passwordLabel, r'LoginViewModel', 'passwordLabel');
    BuiltValueNullFieldError.checkNotNull(
        passwordPlaceholder, r'LoginViewModel', 'passwordPlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        requiredFieldValidator, r'LoginViewModel', 'requiredFieldValidator');
    BuiltValueNullFieldError.checkNotNull(
        invalidEmailValidator, r'LoginViewModel', 'invalidEmailValidator');
    BuiltValueNullFieldError.checkNotNull(
        emailRegex, r'LoginViewModel', 'emailRegex');
    BuiltValueNullFieldError.checkNotNull(
        termsOfUseLabel, r'LoginViewModel', 'termsOfUseLabel');
    BuiltValueNullFieldError.checkNotNull(
        privacyPolicyLabel, r'LoginViewModel', 'privacyPolicyLabel');
    BuiltValueNullFieldError.checkNotNull(
        andSeparatorLabel, r'LoginViewModel', 'andSeparatorLabel');
    BuiltValueNullFieldError.checkNotNull(
        forgotPasswordLabel, r'LoginViewModel', 'forgotPasswordLabel');
    BuiltValueNullFieldError.checkNotNull(
        createAccountLabel, r'LoginViewModel', 'createAccountLabel');
    BuiltValueNullFieldError.checkNotNull(
        loadingMessage, r'LoginViewModel', 'loadingMessage');
    BuiltValueNullFieldError.checkNotNull(
        showSocialButtons, r'LoginViewModel', 'showSocialButtons');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'LoginViewModel', 'backCommand');
    BuiltValueNullFieldError.checkNotNull(
        forgotPassword, r'LoginViewModel', 'forgotPassword');
    BuiltValueNullFieldError.checkNotNull(
        createAccount, r'LoginViewModel', 'createAccount');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'LoginViewModel', 'isLoading');
  }

  @override
  LoginViewModel rebuild(void Function(LoginViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginViewModelBuilder toBuilder() =>
      new LoginViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginViewModel &&
        title == other.title &&
        loginWithEmailText == other.loginWithEmailText &&
        privacyPolicyLink == other.privacyPolicyLink &&
        termsOfUseLink == other.termsOfUseLink &&
        showAppleIdButton == other.showAppleIdButton &&
        emailLabel == other.emailLabel &&
        emailPlaceholder == other.emailPlaceholder &&
        passwordLabel == other.passwordLabel &&
        passwordPlaceholder == other.passwordPlaceholder &&
        requiredFieldValidator == other.requiredFieldValidator &&
        invalidEmailValidator == other.invalidEmailValidator &&
        emailRegex == other.emailRegex &&
        email == other.email &&
        password == other.password &&
        termsOfUseLabel == other.termsOfUseLabel &&
        privacyPolicyLabel == other.privacyPolicyLabel &&
        andSeparatorLabel == other.andSeparatorLabel &&
        forgotPasswordLabel == other.forgotPasswordLabel &&
        createAccountLabel == other.createAccountLabel &&
        loadingMessage == other.loadingMessage &&
        showSocialButtons == other.showSocialButtons &&
        backCommand == other.backCommand &&
        forgotPassword == other.forgotPassword &&
        createAccount == other.createAccount &&
        loginWithApple == other.loginWithApple &&
        loginWithGoogle == other.loginWithGoogle &&
        loginWithFacebook == other.loginWithFacebook &&
        loginWithCredentials == other.loginWithCredentials &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, loginWithEmailText.hashCode);
    _$hash = $jc(_$hash, privacyPolicyLink.hashCode);
    _$hash = $jc(_$hash, termsOfUseLink.hashCode);
    _$hash = $jc(_$hash, showAppleIdButton.hashCode);
    _$hash = $jc(_$hash, emailLabel.hashCode);
    _$hash = $jc(_$hash, emailPlaceholder.hashCode);
    _$hash = $jc(_$hash, passwordLabel.hashCode);
    _$hash = $jc(_$hash, passwordPlaceholder.hashCode);
    _$hash = $jc(_$hash, requiredFieldValidator.hashCode);
    _$hash = $jc(_$hash, invalidEmailValidator.hashCode);
    _$hash = $jc(_$hash, emailRegex.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, termsOfUseLabel.hashCode);
    _$hash = $jc(_$hash, privacyPolicyLabel.hashCode);
    _$hash = $jc(_$hash, andSeparatorLabel.hashCode);
    _$hash = $jc(_$hash, forgotPasswordLabel.hashCode);
    _$hash = $jc(_$hash, createAccountLabel.hashCode);
    _$hash = $jc(_$hash, loadingMessage.hashCode);
    _$hash = $jc(_$hash, showSocialButtons.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jc(_$hash, forgotPassword.hashCode);
    _$hash = $jc(_$hash, createAccount.hashCode);
    _$hash = $jc(_$hash, loginWithApple.hashCode);
    _$hash = $jc(_$hash, loginWithGoogle.hashCode);
    _$hash = $jc(_$hash, loginWithFacebook.hashCode);
    _$hash = $jc(_$hash, loginWithCredentials.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginViewModel')
          ..add('title', title)
          ..add('loginWithEmailText', loginWithEmailText)
          ..add('privacyPolicyLink', privacyPolicyLink)
          ..add('termsOfUseLink', termsOfUseLink)
          ..add('showAppleIdButton', showAppleIdButton)
          ..add('emailLabel', emailLabel)
          ..add('emailPlaceholder', emailPlaceholder)
          ..add('passwordLabel', passwordLabel)
          ..add('passwordPlaceholder', passwordPlaceholder)
          ..add('requiredFieldValidator', requiredFieldValidator)
          ..add('invalidEmailValidator', invalidEmailValidator)
          ..add('emailRegex', emailRegex)
          ..add('email', email)
          ..add('password', password)
          ..add('termsOfUseLabel', termsOfUseLabel)
          ..add('privacyPolicyLabel', privacyPolicyLabel)
          ..add('andSeparatorLabel', andSeparatorLabel)
          ..add('forgotPasswordLabel', forgotPasswordLabel)
          ..add('createAccountLabel', createAccountLabel)
          ..add('loadingMessage', loadingMessage)
          ..add('showSocialButtons', showSocialButtons)
          ..add('backCommand', backCommand)
          ..add('forgotPassword', forgotPassword)
          ..add('createAccount', createAccount)
          ..add('loginWithApple', loginWithApple)
          ..add('loginWithGoogle', loginWithGoogle)
          ..add('loginWithFacebook', loginWithFacebook)
          ..add('loginWithCredentials', loginWithCredentials)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class LoginViewModelBuilder
    implements Builder<LoginViewModel, LoginViewModelBuilder> {
  _$LoginViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _loginWithEmailText;
  String? get loginWithEmailText => _$this._loginWithEmailText;
  set loginWithEmailText(String? loginWithEmailText) =>
      _$this._loginWithEmailText = loginWithEmailText;

  String? _privacyPolicyLink;
  String? get privacyPolicyLink => _$this._privacyPolicyLink;
  set privacyPolicyLink(String? privacyPolicyLink) =>
      _$this._privacyPolicyLink = privacyPolicyLink;

  String? _termsOfUseLink;
  String? get termsOfUseLink => _$this._termsOfUseLink;
  set termsOfUseLink(String? termsOfUseLink) =>
      _$this._termsOfUseLink = termsOfUseLink;

  bool? _showAppleIdButton;
  bool? get showAppleIdButton => _$this._showAppleIdButton;
  set showAppleIdButton(bool? showAppleIdButton) =>
      _$this._showAppleIdButton = showAppleIdButton;

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

  String? _requiredFieldValidator;
  String? get requiredFieldValidator => _$this._requiredFieldValidator;
  set requiredFieldValidator(String? requiredFieldValidator) =>
      _$this._requiredFieldValidator = requiredFieldValidator;

  String? _invalidEmailValidator;
  String? get invalidEmailValidator => _$this._invalidEmailValidator;
  set invalidEmailValidator(String? invalidEmailValidator) =>
      _$this._invalidEmailValidator = invalidEmailValidator;

  String? _emailRegex;
  String? get emailRegex => _$this._emailRegex;
  set emailRegex(String? emailRegex) => _$this._emailRegex = emailRegex;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

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

  String? _forgotPasswordLabel;
  String? get forgotPasswordLabel => _$this._forgotPasswordLabel;
  set forgotPasswordLabel(String? forgotPasswordLabel) =>
      _$this._forgotPasswordLabel = forgotPasswordLabel;

  String? _createAccountLabel;
  String? get createAccountLabel => _$this._createAccountLabel;
  set createAccountLabel(String? createAccountLabel) =>
      _$this._createAccountLabel = createAccountLabel;

  String? _loadingMessage;
  String? get loadingMessage => _$this._loadingMessage;
  set loadingMessage(String? loadingMessage) =>
      _$this._loadingMessage = loadingMessage;

  bool? _showSocialButtons;
  bool? get showSocialButtons => _$this._showSocialButtons;
  set showSocialButtons(bool? showSocialButtons) =>
      _$this._showSocialButtons = showSocialButtons;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  FunctionHolder? _forgotPassword;
  FunctionHolder? get forgotPassword => _$this._forgotPassword;
  set forgotPassword(FunctionHolder? forgotPassword) =>
      _$this._forgotPassword = forgotPassword;

  FunctionHolder? _createAccount;
  FunctionHolder? get createAccount => _$this._createAccount;
  set createAccount(FunctionHolder? createAccount) =>
      _$this._createAccount = createAccount;

  FunctionHolder? _loginWithApple;
  FunctionHolder? get loginWithApple => _$this._loginWithApple;
  set loginWithApple(FunctionHolder? loginWithApple) =>
      _$this._loginWithApple = loginWithApple;

  FunctionHolder? _loginWithGoogle;
  FunctionHolder? get loginWithGoogle => _$this._loginWithGoogle;
  set loginWithGoogle(FunctionHolder? loginWithGoogle) =>
      _$this._loginWithGoogle = loginWithGoogle;

  FunctionHolder? _loginWithFacebook;
  FunctionHolder? get loginWithFacebook => _$this._loginWithFacebook;
  set loginWithFacebook(FunctionHolder? loginWithFacebook) =>
      _$this._loginWithFacebook = loginWithFacebook;

  TypedFunctionHolder<LoginWithEmailData>? _loginWithCredentials;
  TypedFunctionHolder<LoginWithEmailData>? get loginWithCredentials =>
      _$this._loginWithCredentials;
  set loginWithCredentials(
          TypedFunctionHolder<LoginWithEmailData>? loginWithCredentials) =>
      _$this._loginWithCredentials = loginWithCredentials;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  LoginViewModelBuilder();

  LoginViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _loginWithEmailText = $v.loginWithEmailText;
      _privacyPolicyLink = $v.privacyPolicyLink;
      _termsOfUseLink = $v.termsOfUseLink;
      _showAppleIdButton = $v.showAppleIdButton;
      _emailLabel = $v.emailLabel;
      _emailPlaceholder = $v.emailPlaceholder;
      _passwordLabel = $v.passwordLabel;
      _passwordPlaceholder = $v.passwordPlaceholder;
      _requiredFieldValidator = $v.requiredFieldValidator;
      _invalidEmailValidator = $v.invalidEmailValidator;
      _emailRegex = $v.emailRegex;
      _email = $v.email;
      _password = $v.password;
      _termsOfUseLabel = $v.termsOfUseLabel;
      _privacyPolicyLabel = $v.privacyPolicyLabel;
      _andSeparatorLabel = $v.andSeparatorLabel;
      _forgotPasswordLabel = $v.forgotPasswordLabel;
      _createAccountLabel = $v.createAccountLabel;
      _loadingMessage = $v.loadingMessage;
      _showSocialButtons = $v.showSocialButtons;
      _backCommand = $v.backCommand;
      _forgotPassword = $v.forgotPassword;
      _createAccount = $v.createAccount;
      _loginWithApple = $v.loginWithApple;
      _loginWithGoogle = $v.loginWithGoogle;
      _loginWithFacebook = $v.loginWithFacebook;
      _loginWithCredentials = $v.loginWithCredentials;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginViewModel;
  }

  @override
  void update(void Function(LoginViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginViewModel build() => _build();

  _$LoginViewModel _build() {
    final _$result = _$v ??
        new _$LoginViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'LoginViewModel', 'title'),
            loginWithEmailText: BuiltValueNullFieldError.checkNotNull(
                loginWithEmailText, r'LoginViewModel', 'loginWithEmailText'),
            privacyPolicyLink: BuiltValueNullFieldError.checkNotNull(
                privacyPolicyLink, r'LoginViewModel', 'privacyPolicyLink'),
            termsOfUseLink: BuiltValueNullFieldError.checkNotNull(
                termsOfUseLink, r'LoginViewModel', 'termsOfUseLink'),
            showAppleIdButton: BuiltValueNullFieldError.checkNotNull(
                showAppleIdButton, r'LoginViewModel', 'showAppleIdButton'),
            emailLabel: BuiltValueNullFieldError.checkNotNull(
                emailLabel, r'LoginViewModel', 'emailLabel'),
            emailPlaceholder: BuiltValueNullFieldError.checkNotNull(
                emailPlaceholder, r'LoginViewModel', 'emailPlaceholder'),
            passwordLabel: BuiltValueNullFieldError.checkNotNull(passwordLabel, r'LoginViewModel', 'passwordLabel'),
            passwordPlaceholder: BuiltValueNullFieldError.checkNotNull(passwordPlaceholder, r'LoginViewModel', 'passwordPlaceholder'),
            requiredFieldValidator: BuiltValueNullFieldError.checkNotNull(requiredFieldValidator, r'LoginViewModel', 'requiredFieldValidator'),
            invalidEmailValidator: BuiltValueNullFieldError.checkNotNull(invalidEmailValidator, r'LoginViewModel', 'invalidEmailValidator'),
            emailRegex: BuiltValueNullFieldError.checkNotNull(emailRegex, r'LoginViewModel', 'emailRegex'),
            email: email,
            password: password,
            termsOfUseLabel: BuiltValueNullFieldError.checkNotNull(termsOfUseLabel, r'LoginViewModel', 'termsOfUseLabel'),
            privacyPolicyLabel: BuiltValueNullFieldError.checkNotNull(privacyPolicyLabel, r'LoginViewModel', 'privacyPolicyLabel'),
            andSeparatorLabel: BuiltValueNullFieldError.checkNotNull(andSeparatorLabel, r'LoginViewModel', 'andSeparatorLabel'),
            forgotPasswordLabel: BuiltValueNullFieldError.checkNotNull(forgotPasswordLabel, r'LoginViewModel', 'forgotPasswordLabel'),
            createAccountLabel: BuiltValueNullFieldError.checkNotNull(createAccountLabel, r'LoginViewModel', 'createAccountLabel'),
            loadingMessage: BuiltValueNullFieldError.checkNotNull(loadingMessage, r'LoginViewModel', 'loadingMessage'),
            showSocialButtons: BuiltValueNullFieldError.checkNotNull(showSocialButtons, r'LoginViewModel', 'showSocialButtons'),
            backCommand: BuiltValueNullFieldError.checkNotNull(backCommand, r'LoginViewModel', 'backCommand'),
            forgotPassword: BuiltValueNullFieldError.checkNotNull(forgotPassword, r'LoginViewModel', 'forgotPassword'),
            createAccount: BuiltValueNullFieldError.checkNotNull(createAccount, r'LoginViewModel', 'createAccount'),
            loginWithApple: loginWithApple,
            loginWithGoogle: loginWithGoogle,
            loginWithFacebook: loginWithFacebook,
            loginWithCredentials: loginWithCredentials,
            isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, r'LoginViewModel', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
