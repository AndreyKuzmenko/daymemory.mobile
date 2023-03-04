import 'package:daymemory/redux/action/account_action.dart';
import 'package:daymemory/redux/action/token_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/network/network_user_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/settings_service/storage_user_info.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class TokenRefresherMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;
  final IDialogService dialogService;

  TokenRefresherMiddleware({
    required this.settingsService,
    required this.dialogService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is TokenRefreshingAction) {
      await _saveTokens(
        action.signinResult,
        store.dispatch,
        action.nextAction,
      );
    }
  }

  Future<void> _saveTokens(
    SigninResult signinResult,
    Function(dynamic) dispatch,
    dynamic nextAction,
  ) async {
    try {
      final accessToken = signinResult.accessToken;
      final refreshToken = signinResult.refreshToken;
      await settingsService.setUserInfo(StorageUserInfo(
        id: signinResult.id,
        email: signinResult.email,
        firstName: signinResult.firstName,
        lastName: signinResult.lastName,
        isEncryptionEnabled: signinResult.isEncryptionEnabled,
        encryptedText: signinResult.encryptedText,
      ));

      dispatch(UserInfoLoadedAction(
        email: signinResult.email,
        firstName: signinResult.firstName,
        lastName: signinResult.lastName,
        isEncryptionEnabled: signinResult.isEncryptionEnabled,
        isAuthenticated: accessToken.isNotEmpty,
        encryptedText: signinResult.encryptedText,
      ));

      var settings = await settingsService.getSettings();
      settings.accessToken = accessToken;
      settings.refreshToken = refreshToken;
      await settingsService.setSettings(settings);

      if (accessToken.isEmpty) {
        //networkService.resetToken();
      }
      dispatch(nextAction);
    } catch (e) {
      //dispatch(NavigateToLogInAction());
      //dispatch(CommonResetStoreToDefaultAction());
      dispatch(dialogService.prepareSomethingWentWrongDialogAction(
        dispatch,
        errorMessage: e.toString(),
      ));
      rethrow;
    }
  }
}
