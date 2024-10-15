import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/local_auth_service/local_auth_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:permission_handler/permission_handler.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../action/face_id_action.dart';

class BiometricMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;
  final ILocalAuthService localAuthService;
  final IDialogService dialogService;
  final IContextService contextService;

  BiometricMiddleware({
    required this.settingsService,
    required this.localAuthService,
    required this.contextService,
    required this.dialogService,
  });

  AppLocalizations? get _locale => contextService.locale;

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    if (action is AllowBiometricAction) {
      final result = await _authorizeWithBiometric(
        action.reason,
        action.isEnabledFromSettings,
        store.dispatch,
      );
      if (result) {
        await _saveBiometricResponse(
          store.dispatch,
          action.isEnabledFromSettings,
          store.state.screenBlockingState.isTimerBlocking,
          BiometricsStoredConfigType.fingerOrFace,
        );
      } else if (action.isEnabledFromSettings) {
        store.dispatch(const SettingsBiometricUnlockAction(isEnabled: false));
      }
    } else if (action is CheckBiometricTypeAction) {
      await _checkBiometricsType(store.dispatch, action.nextAction);
    } else if (action is SkipBiometricAction) {
      await _saveBiometricResponse(store.dispatch, false, store.state.screenBlockingState.isTimerBlocking, BiometricsStoredConfigType.skipped);
    }
  }

  Future<bool> _authorizeWithBiometric(
    String reason,
    bool isEnabledFromSettings,
    Function(dynamic action) dispatch,
  ) async {
    try {
      return await localAuthService.authenticate(reason);
    } catch (e) {
      if (isEnabledFromSettings) {
        dispatch(const SettingsBiometricUnlockAction(isEnabled: false));
        dispatch(dialogService.openSettingsDialogAction(
          dispatch,
          title: _locale!.biometric_blocked_title,
          message: _locale!.biometric_blocked_message,
          navigateCommand: () async => await openAppSettings(),
        ));
      }
      return false;
    }
  }

  Future<void> _saveBiometricResponse(
    Function(dynamic) dispatch,
    bool hideWithoutRedirect,
    bool isTimerBlocking,
    BiometricsStoredConfigType result,
  ) async {
    try {
      settingsService.setBiometricType(result);
      if (hideWithoutRedirect) {
        return;
      }
      //TODO: Redo this logic
      if (isTimerBlocking) {
        dispatch(PopBackStackAction());
      } else {
        dispatch(NavigateToRootAction());
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _checkBiometricsType(
    Function(dynamic) dispatch,
    dynamic action,
  ) async {
    try {
      var biometricType = await settingsService.getBiometricType();

      if (biometricType == BiometricsStoredConfigType.fingerOrFace) {
        dispatch(BiometricUsageAction(availableBiometrics: AvailableBiometrics.faceOrFinger));
      } else if (biometricType == BiometricsStoredConfigType.reset) {
        if (await localAuthService.canAuthenticateWithBiometrics) {
          dispatch(BiometricUsageAction(availableBiometrics: AvailableBiometrics.faceOrFinger));
        }
      }
    } catch (e) {
      rethrow;
    }
    dispatch(action);
  }
}
