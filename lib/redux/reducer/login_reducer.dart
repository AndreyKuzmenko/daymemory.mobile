import 'package:daymemory/redux/action/login_action.dart';
import 'package:daymemory/redux/state/login_state/login_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<LoginState> get loginReducer {
  return combineReducers<LoginState>([
    TypedReducer(_loginIsLoadingAction).call,
    TypedReducer(_forgotPasswordAction).call,
  ]);
}

LoginState _loginIsLoadingAction(LoginState state, LoginIsLoadingAction action) {
  return state.rebuild((b) => b..isSending = action.isSending);
}

LoginState _forgotPasswordAction(LoginState state, ForgotPasswordAction action) {
  return state.rebuild((b) => b..email = action.email);
}
