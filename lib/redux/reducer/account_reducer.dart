import 'package:daymemory/redux/action/account_action.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/account_state/account_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<AccountState> get accountReducer {
  return combineReducers<AccountState>([
    TypedReducer(_userInfoLoadedAction).call,
    TypedReducer(_logoutAction).call,
    TypedReducer(_encryptionEnabledAction).call,
  ]);
}

AccountState _logoutAction(AccountState state, LogoutAction action) {
  return state.rebuild(
    (b) => b
      ..userEmail = null
      ..firstName = null
      ..encryptedText = null
      ..isAuthenticated = false
      ..isEncryptionEnabled = false
      ..lastName = null,
  );
}

AccountState _userInfoLoadedAction(AccountState state, UserInfoLoadedAction action) {
  return state.rebuild(
    (b) => b
      ..userEmail = action.email
      ..isEncryptionEnabled = action.isEncryptionEnabled
      ..encryptedText = action.encryptedText
      ..isAuthenticated = action.isAuthenticated
      ..firstName = action.firstName
      ..lastName = action.lastName,
  );
}

AccountState _encryptionEnabledAction(AccountState state, EncryptionEnabledAction action) {
  return state.rebuild(
    (b) => b..isEncryptionEnabled = true,
  );
}
