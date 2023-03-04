import 'package:daymemory/redux/action/account_action.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/network/network_user_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class LogoutMiddleware implements MiddlewareClass<AppState> {
  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is LogoutAction) {
      await _logOut(store.dispatch);
    }
  }

  Future<void> _logOut(
    Function(dynamic action) dispatch,
  ) async {
    dispatch(TokenRefreshingAction(
      SigninResult(
        id: "",
        email: "",
        firstName: "",
        lastName: "",
        accessToken: "",
        refreshToken: "",
        isEncryptionEnabled: false,
        encryptedText: null,
      ),
      UserAuthChangedAction(isAuthenticated: false),
    ));
    //dispatch(DelayedAction(nextAction: CommonResetStoreToDefaultAction(), delay: 1000));
  }
}
