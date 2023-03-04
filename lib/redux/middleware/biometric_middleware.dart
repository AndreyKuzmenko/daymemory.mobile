import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/local_auth_service/local_auth_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:local_auth/local_auth.dart';
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
          action.isFaceIdAllowed ? 'face' : 'finger',
        );
      } else if (action.isEnabledFromSettings) {
        store.dispatch(const SettingsBiometricUnlockAction(isEnabled: false));
      }
    } else if (action is CheckBiometricTypeAction) {
      await _checkBiometricsType(store.dispatch, action.nextAction);
    } else if (action is SkipBiometricAction) {
      await _saveBiometricResponse(store.dispatch, false, store.state.screenBlockingState.isTimerBlocking, false.toString());
    } else if (action is BiometricNavigateAction) {
      await _navigateToScreen(action.availableBiometrics, store.state.screenBlockingState.isTimerBlocking, store.dispatch);
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
    String result,
  ) async {
    try {
      var settings = await settingsService.getSettings();
      settings.biometricType = result;
      await settingsService.setSettings(settings);

      if (hideWithoutRedirect) {
        return;
      }
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
      var settings = await settingsService.getSettings();
      final type = settings.biometricType;
      if (type == 'face') {
        dispatch(BiometricUsageAction(availableBiometrics: AvailableBiometrics.face));
      } else if (type == 'finger') {
        dispatch(BiometricUsageAction(availableBiometrics: AvailableBiometrics.finger));
      } else if (type == 'reset' || type == null) {
        final canCheckBiometrics = await localAuthService.canCheckBiometrics;
        final isDeviceSupported = await localAuthService.isDeviceSupported;

        final availableBiometrics = await localAuthService.biometrics;
        if (canCheckBiometrics && isDeviceSupported) {
          if (availableBiometrics.contains(BiometricType.face) && availableBiometrics.contains(BiometricType.fingerprint)) {
            dispatch(BiometricUsageAction(availableBiometrics: AvailableBiometrics.faceAndFinger));
          } else if (availableBiometrics.contains(BiometricType.face)) {
            dispatch(BiometricUsageAction(availableBiometrics: AvailableBiometrics.face));
          } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
            dispatch(BiometricUsageAction(availableBiometrics: AvailableBiometrics.finger));
          }
        }
      }
    } catch (e) {
      rethrow;
    }
    dispatch(action);
  }

  Future<void> _navigateToScreen(
    AvailableBiometrics availableBiometrics,
    bool isTimerBlocking,
    Function(dynamic action) dispatch,
  ) async {
    if (availableBiometrics == AvailableBiometrics.unknown) {
      if (isTimerBlocking) {
        dispatch(PopBackStackAction());
      } else {
        dispatch(NavigateToRootAction());
      }
    } else if (availableBiometrics == AvailableBiometrics.face || availableBiometrics == AvailableBiometrics.faceAndFinger) {
      dispatch(NavigateToFaceIdAction());
    } else {
      dispatch(NavigateToTouchIdAction());
    }
  }
}
