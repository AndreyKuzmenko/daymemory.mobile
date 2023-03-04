// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountState extends AccountState {
  @override
  final bool isAuthenticated;
  @override
  final bool isEncryptionEnabled;
  @override
  final String? userEmail;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? encryptedText;

  factory _$AccountState([void Function(AccountStateBuilder)? updates]) =>
      (new AccountStateBuilder()..update(updates))._build();

  _$AccountState._(
      {required this.isAuthenticated,
      required this.isEncryptionEnabled,
      this.userEmail,
      this.firstName,
      this.lastName,
      this.encryptedText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isAuthenticated, r'AccountState', 'isAuthenticated');
    BuiltValueNullFieldError.checkNotNull(
        isEncryptionEnabled, r'AccountState', 'isEncryptionEnabled');
  }

  @override
  AccountState rebuild(void Function(AccountStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountStateBuilder toBuilder() => new AccountStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountState &&
        isAuthenticated == other.isAuthenticated &&
        isEncryptionEnabled == other.isEncryptionEnabled &&
        userEmail == other.userEmail &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        encryptedText == other.encryptedText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isAuthenticated.hashCode);
    _$hash = $jc(_$hash, isEncryptionEnabled.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, encryptedText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountState')
          ..add('isAuthenticated', isAuthenticated)
          ..add('isEncryptionEnabled', isEncryptionEnabled)
          ..add('userEmail', userEmail)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('encryptedText', encryptedText))
        .toString();
  }
}

class AccountStateBuilder
    implements Builder<AccountState, AccountStateBuilder> {
  _$AccountState? _$v;

  bool? _isAuthenticated;
  bool? get isAuthenticated => _$this._isAuthenticated;
  set isAuthenticated(bool? isAuthenticated) =>
      _$this._isAuthenticated = isAuthenticated;

  bool? _isEncryptionEnabled;
  bool? get isEncryptionEnabled => _$this._isEncryptionEnabled;
  set isEncryptionEnabled(bool? isEncryptionEnabled) =>
      _$this._isEncryptionEnabled = isEncryptionEnabled;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(String? userEmail) => _$this._userEmail = userEmail;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _encryptedText;
  String? get encryptedText => _$this._encryptedText;
  set encryptedText(String? encryptedText) =>
      _$this._encryptedText = encryptedText;

  AccountStateBuilder();

  AccountStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isAuthenticated = $v.isAuthenticated;
      _isEncryptionEnabled = $v.isEncryptionEnabled;
      _userEmail = $v.userEmail;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _encryptedText = $v.encryptedText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountState;
  }

  @override
  void update(void Function(AccountStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountState build() => _build();

  _$AccountState _build() {
    final _$result = _$v ??
        new _$AccountState._(
            isAuthenticated: BuiltValueNullFieldError.checkNotNull(
                isAuthenticated, r'AccountState', 'isAuthenticated'),
            isEncryptionEnabled: BuiltValueNullFieldError.checkNotNull(
                isEncryptionEnabled, r'AccountState', 'isEncryptionEnabled'),
            userEmail: userEmail,
            firstName: firstName,
            lastName: lastName,
            encryptedText: encryptedText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
