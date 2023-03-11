import 'package:daymemory/redux/action/account_action.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/action/sync_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/auth_service/auth_service.dart';
import 'package:daymemory/services/auth_service/auth_user_data.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/encrypt_service/encrypt_service.dart';
import 'package:daymemory/services/logging/config_service.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/network/errors/bad_request_exception.dart';
import 'package:daymemory/services/network/network_user_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/settings_service/storage_user_info.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uuid/uuid.dart';

class AuthMiddleware implements MiddlewareClass<AppState> {
  final IDialogService dialogService;
  final INetworkUserService networkUserService;
  final IAuthService authService;
  final IContextService contextService;
  final ILoggingService loggingService;
  final ISettingsService settingsService;
  final IEncryptService encryptService;
  final IConfigService configService;

  AppLocalizations? get _locale => contextService.locale;

  AuthMiddleware({
    required this.dialogService,
    required this.networkUserService,
    required this.authService,
    required this.contextService,
    required this.loggingService,
    required this.settingsService,
    required this.encryptService,
    required this.configService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is LoginWithEmailAction) {
      await _loginWithEmail(store, action);
    } else if (action is SignupWithEmailAction) {
      await _signupWithEmail(store, action);
    } else if (action is ForgotPasswordAction) {
      await _forgotPassword(store, action);
    } else if (action is RestorePasswordAction) {
      await _restorePassword(store, action);
    } else if (action is LoginWithAppleIdAction) {
      await _loginAppleId(store.dispatch, action);
    } else if (action is LoginWithFacebookIdAction) {
      await _loginFacebookId(store.dispatch, action);
    } else if (action is LoginWithGoogleIdAction) {
      await _loginGoogleId(store.dispatch, action);
    } else if (action is SignupThirdPartyAction) {
      if (action.authResult.isSuccessfull) {
        await _signupSocial(store, action, action.authResult.userData!, action.authResult.provider);
      } else {
        store.dispatch(const LoginIsLoadingAction(isSending: false));
      }
    } else if (action is EnableAccountEncryptionAction) {
      await _enableEncryption(store, action);
    }
  }

  Future<void> _restorePassword(Store<AppState> store, RestorePasswordAction action) async {
    try {
      store.dispatch(const LoginIsLoadingAction(isSending: true));
      var result = await networkUserService.restorePassword(action.email, action.password, action.code);
      store.dispatch(UserInfoLoadedAction(
        email: result.email,
        firstName: result.firstName,
        lastName: result.lastName,
        isEncryptionEnabled: result.isEncryptionEnabled,
        isAuthenticated: true,
        encryptedText: result.encryptedText,
      ));
      store.dispatch(PopBackStackAction());
      store.dispatch(DelayedAction(nextAction: PopBackStackAction(), delay: 100));
      store.dispatch(loginInstruction(result));
    } catch (e) {
      loggingService.logError(e);
      store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.restore_password_error));
    } finally {
      store.dispatch(const LoginIsLoadingAction(isSending: false));
    }
  }

  Future<void> _forgotPassword(Store<AppState> store, ForgotPasswordAction action) async {
    try {
      store.dispatch(const LoginIsLoadingAction(isSending: true));
      await networkUserService.forgotPassword(action.email);
      store.dispatch(NavigateToRestorePasswordAction());
    } on BadRequestException catch (e) {
      if (e.innerError.code == 101) {
        store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.user_is_not_found));
      } else {
        store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.restore_password_error));
      }
    } catch (e) {
      loggingService.logError(e);
      store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.restore_password_error));
    } finally {
      store.dispatch(const LoginIsLoadingAction(isSending: false));
    }
  }

  Future<void> _signupWithEmail(Store<AppState> store, SignupWithEmailAction action) async {
    try {
      store.dispatch(const LoginIsLoadingAction(isSending: true));

      var emailNotExists = await networkUserService.checkEmail(action.email);
      if (!emailNotExists) {
        store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.email_is_in_use_error));
        return;
      }

      var result = await networkUserService.signUp(
        action.email,
        action.firstName,
        action.lastName,
        action.password,
      );
      store.dispatch(PopBackStackAction());
      store.dispatch(loginInstruction(result));
    } catch (e) {
      loggingService.logError(e);
      store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.create_account_error));
    } finally {
      store.dispatch(const LoginIsLoadingAction(isSending: false));
    }
  }

  Future<void> _loginWithEmail(Store<AppState> store, LoginWithEmailAction action) async {
    try {
      store.dispatch(const LoginIsLoadingAction(isSending: true));
      var result = await networkUserService.login(action.email, action.password);
      store.dispatch(loginInstruction(result));
    } catch (e) {
      loggingService.logError(e);
      store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.invalid_email_password));
    } finally {
      store.dispatch(const LoginIsLoadingAction(isSending: false));
    }
  }

  Future<void> _loginGoogleId(Function(dynamic action) dispatch, dynamic action) async {
    dispatch(const LoginIsLoadingAction(isSending: true));
    try {
      var result = await authService.signInWithGoogle();
      dispatch(SignupThirdPartyAction(result));
    } catch (e) {
      loggingService.logError(e);
      dispatch(dialogService.prepareSomethingWentWrongDialogAction(dispatch));
    } finally {
      dispatch(const LoginIsLoadingAction(isSending: false));
    }
  }

  Future<void> _loginFacebookId(Function(dynamic action) dispatch, dynamic action) async {
    dispatch(const LoginIsLoadingAction(isSending: true));
    try {
      var result = await authService.signInWitFacebook();
      dispatch(SignupThirdPartyAction(result));
    } catch (e) {
      loggingService.logError(e);
      dispatch(dialogService.prepareSomethingWentWrongDialogAction(dispatch));
    } finally {
      dispatch(const LoginIsLoadingAction(isSending: false));
    }
  }

  Future<void> _loginAppleId(Function(dynamic action) dispatch, dynamic action) async {
    dispatch(const LoginIsLoadingAction(isSending: true));

    try {
      var result = await authService.signInWithApple();
      dispatch(SignupThirdPartyAction(result));
    } catch (e) {
      loggingService.logError(e);
      dispatch(dialogService.prepareSomethingWentWrongDialogAction(dispatch));
    } finally {
      dispatch(const LoginIsLoadingAction(isSending: false));
    }
  }

  Future<void> _signupSocial(Store<AppState> store, dynamic action, AuthUserData userData, String provider) async {
    store.dispatch(const DelayedAction(nextAction: LoginIsLoadingAction(isSending: true), delay: 100));

    try {
      var result = await networkUserService.signUpSocial(
        userData.id,
        userData.email,
        userData.firstName,
        userData.lastName,
        userData.imageUrl,
        provider,
      );
      store.dispatch(UserInfoLoadedAction(
        email: result.email,
        firstName: result.firstName,
        lastName: result.lastName,
        isEncryptionEnabled: result.isEncryptionEnabled,
        isAuthenticated: true,
        encryptedText: result.encryptedText,
      ));
      store.dispatch(loginInstruction(result));
    } catch (e) {
      loggingService.logError(e);
      store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch));
    } finally {
      store.dispatch(const LoginIsLoadingAction(isSending: false));
    }
  }

  Future<void> _enableEncryption(Store<AppState> store, EnableAccountEncryptionAction action) async {
    try {
      var key = const Uuid().v4().toUpperCase().toString().substring(0, 32);

      var encryptedText = encryptService.encrypt(key, configService.settings.encryptedText);
      var result = await networkUserService.enableEncryption(encryptedText);
      if (result) {
        store.dispatch(EncryptAllDataAction());

        var user = await settingsService.getUserInfo();
        var updatedUser = StorageUserInfo(
          id: user!.id,
          email: user.email,
          firstName: user.firstName,
          lastName: user.lastName,
          isEncryptionEnabled: true,
          encryptedText: encryptedText,
        );
        await settingsService.setUserInfo(updatedUser);

        store.dispatch(UserInfoLoadedAction(
          email: user.email,
          firstName: user.firstName,
          lastName: user.lastName,
          isEncryptionEnabled: user.isEncryptionEnabled,
          isAuthenticated: true,
          encryptedText: encryptedText,
        ));

        var settings = await settingsService.getSettings();
        settings.isEncryptionKeyLocked = true;
        await settingsService.setSettings(settings);

        await settingsService.setEncryptionKey(key);
        store.dispatch(EncryptionKeyGeneratedAction(key: key));
        store.dispatch(EncryptionEnabledAction());
      } else {
        store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch));
      }
    } catch (e) {
      loggingService.logError(e);
      store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch));
    }
  }
}
