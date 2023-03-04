import 'package:built_value/built_value.dart';

part 'account_state.g.dart';

abstract class AccountState implements Built<AccountState, AccountStateBuilder> {
  bool get isAuthenticated;

  bool get isEncryptionEnabled;

  String? get userEmail;

  String? get firstName;

  String? get lastName;

  String? get encryptedText;

  AccountState._();

  factory AccountState([void Function(AccountStateBuilder) updates]) = _$AccountState;

  factory AccountState.initial() => AccountState(
        (b) => b
          ..isAuthenticated = false
          ..isEncryptionEnabled = false
          ..userEmail = null
          ..firstName = null
          ..encryptedText = null
          ..lastName = null,
      );
}
