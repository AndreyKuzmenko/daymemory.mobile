import 'package:daymemory/redux/action/account_action.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/face_id_action.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/redux/action/notebooks_action.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/action/sync_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/email_sender_service/email_sender_service.dart';
import 'package:daymemory/services/encrypt_service/encrypt_service.dart';
import 'package:daymemory/services/geolocator_service/geolocator_service.dart';
import 'package:daymemory/services/logging/config_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/settings_service/storage_review_settings.dart';
import 'package:daymemory/services/storage/interfaces/interface_storage_service.dart';
import 'package:permission_handler/permission_handler.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;
  final IDeviceInfoService deviceInfoService;
  final IGeolocatorService geolocatorService;
  final IDialogService dialogService;
  final IContextService contextService;
  final IStorageService storageService;
  final IEncryptService encryptService;
  final IConfigService configService;
  final IEmailSenderService emailSenderService;

  AppLocalizations? get _locale => contextService.locale;

  SettingsMiddleware({
    required this.settingsService,
    required this.deviceInfoService,
    required this.geolocatorService,
    required this.dialogService,
    required this.contextService,
    required this.storageService,
    required this.encryptService,
    required this.configService,
    required this.emailSenderService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    if (action is ClearDeviceDataAction) {
      await _clearAllData(action, store.dispatch);
    }
    if (action is SendEmailToDevelopersAction) {
      await _sendEmailToDevelopers(store.dispatch);
    } else if (action is LoadSettingsAction) {
      var settings = await settingsService.getSettings();

      var isPasscodeEnabled = settings.isPasscodeEnabled && settings.pinCode != null && settings.pinCode!.isNotEmpty;
      var isLocationSavingEnabled = settings.isLocationSavingEnabled && await geolocatorService.isLocationServiceEnabled();
      var language = settings.language ?? deviceInfoService.localeName;

      var languages = settingsService.getAvailableLanguages();

      var reviewSettings = await settingsService.getReviewSettings();
      var encryptionKey = await settingsService.getEncryptionKey();
      var isEncryptionKeyLocked = settings.isEncryptionKeyLocked;

      store.dispatch(SettingsLoadedAction(
          isLocationSavingEnabled: isLocationSavingEnabled,
          isBiometricActive: isPasscodeEnabled,
          availableLanguages: languages,
          isSyncEnabled: settings.isSyncEnabled,
          isBiometricAvailable: deviceInfoService.isBiometricAvailable,
          isBiometricEnabled: settings.isBiometricEnabled && isPasscodeEnabled,
          isPasscodeEnabled: isPasscodeEnabled,
          reviewSettings: reviewSettings,
          passcodeRequireAfterSeconds: settings.passcodeRequireAfterSeconds,
          encryptionKey: encryptionKey,
          isEncryptionKeyLocked: isEncryptionKeyLocked,
          language: language));

      if (action.nextAction != null) {
        store.dispatch(action.nextAction);
      }
    }

    if (action is UpdateReviewSettingsAction) {
      var reviewSettings = await settingsService.getReviewSettings();
      if (action.period == ReviewPeriod.yearly) {
        reviewSettings.isYearlyEnabled = action.isEnabled;
      } else if (action.period == ReviewPeriod.sixMonths) {
        reviewSettings.is6MonthsEnabled = action.isEnabled;
      } else if (action.period == ReviewPeriod.threeMonths) {
        reviewSettings.is3MonthsEnabled = action.isEnabled;
      } else if (action.period == ReviewPeriod.oneMonth) {
        reviewSettings.is1MonthEnabled = action.isEnabled;
      } else if (action.period == ReviewPeriod.tenDays) {
        reviewSettings.is10DaysEnabled = action.isEnabled;
      } else if (action.period == ReviewPeriod.sevenDays) {
        reviewSettings.is7DaysEnabled = action.isEnabled;
      }
      await settingsService.setReviewSettings(reviewSettings);
      store.dispatch(LoadSettingsAction(null));
    }

    if (action is SettingsSaveLocationAction) {
      if (action.isEnabled) {
        try {
          await GeolocatorService().checkPermission();
          var settings = await settingsService.getSettings();
          settings.isLocationSavingEnabled = true;
          await settingsService.setSettings(settings);
          store.dispatch(SettingsSaveLocationEnabledAction());
        } catch (e) {
          store.dispatch(dialogService.openSettingsDialogAction(
            store.dispatch,
            title: _locale!.locations_blocked_title,
            message: _locale!.locations_blocked_message,
            navigateCommand: () async => await openAppSettings(),
          ));
          store.dispatch(SettingsSaveLocationDisabledAction());
          var settings = await settingsService.getSettings();
          settings.isLocationSavingEnabled = false;
          await settingsService.setSettings(settings);
        }
      } else {
        store.dispatch(SettingsSaveLocationDisabledAction());
        var settings = await settingsService.getSettings();
        settings.isLocationSavingEnabled = false;
        await settingsService.setSettings(settings);
      }
    }

    if (action is SettingsPasscodeAction) {
      store.dispatch(ClearAllPinsAction());
      if (action.isEnabled) {
        store.dispatch(NavigateToCreatePinAction());
      } else {
        var settings = await settingsService.getSettings();
        settings.isBiometricEnabled = false;
        await settingsService.setSettings(settings);
        store.dispatch(RemovePinAction());
      }
      var settings = await settingsService.getSettings();
      settings.isPasscodeEnabled = action.isEnabled;
      await settingsService.setSettings(settings);
    }

    if (action is SettingsBiometricUnlockAction) {
      var settings = await settingsService.getSettings();
      settings.isBiometricEnabled = action.isEnabled;
      await settingsService.setSettings(settings);
      if (action.isEnabled) {
        store.dispatch(AllowBiometricAction(
          reason: _locale!.allow_face_id,
          isFaceIdAllowed: _isFaceIdAvailable(store.state.faceIdState.availableBiometrics),
          isEnabledFromSettings: true,
        ));
      }
    } else if (action is SettingsSelectLanguageAction) {
      var settings = await settingsService.getSettings();
      settings.language = action.languageCode;
      await settingsService.setSettings(settings);
    } else if (action is SettingsPasscodeRequireAfterAction) {
      var settings = await settingsService.getSettings();
      settings.passcodeRequireAfterSeconds = action.seconds;
      await settingsService.setSettings(settings);
    } else if (action is SettingsChangeSyncStateAction) {
      await _changeSyncState(store, action.isEnabled);
    } else if (action is SetEncryptionKeyAction) {
      await _setEncryptionKey(store, action);
    }
  }

  Future _changeSyncState(Store<AppState> store, bool isEnabled) async {
    if (isEnabled) {
      if (store.state.accountState.isEncryptionEnabled) {
        var key = store.state.settingsState.encryptionKey;
        if (key == null || key.isEmpty) {
          store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(
            store.dispatch,
            errorTitle: _locale!.settings_encryption_key_absent_error_title,
            errorMessage: _locale!.settings_encryption_key_absent_error_message,
          ));
          return;
        }
        if (store.state.accountState.encryptedText != null) {
          var result = encryptService.decrypt(key, store.state.accountState.encryptedText!);
          if (result != configService.settings.encryptedText) {
            store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(
              store.dispatch,
              errorTitle: _locale!.settings_encryption_key_invalid_error_title,
              errorMessage: _locale!.settings_encryption_key_invalid_error_message,
            ));
            return;
          }
        }
      }

      store.dispatch(DelayedAction(nextAction: StartSyncAction(isManualSync: true)));
    }
    var settings = await settingsService.getSettings();
    settings.isSyncEnabled = isEnabled;
    await settingsService.setSettings(settings);

    store.dispatch(SettingsSyncStateChangedAction(isEnabled: isEnabled));
  }

  bool _isFaceIdAvailable(AvailableBiometrics availableBiometrics) {
    switch (availableBiometrics) {
      case AvailableBiometrics.face:
        return true;
      case AvailableBiometrics.faceAndFinger:
        return true;
      case AvailableBiometrics.finger:
        return false;
      default:
        return false;
    }
  }

  Future<void> _sendEmailToDevelopers(Function(dynamic action) dispatch) async {
    await emailSenderService.sendEmail(configService.settings.devContactEmail, "Day Memory", "");
  }

  Future<void> _clearAllData(ClearDeviceDataAction action, Function(dynamic action) dispatch) async {
    dispatch(
      dialogService.confirmDeletingDialogAction(
        dispatch,
        deleteCommand: () async {
          await storageService.clearAllData();
          await settingsService.clearAll();

          dispatch(UserInfoLoadedAction(
            email: "",
            firstName: "",
            lastName: "",
            isEncryptionEnabled: false,
            isAuthenticated: false,
            encryptedText: null,
          ));
          //await settingsService.setLastSyncDate(null);
          //await settingsService.setDefaultNotebookId(null);
          dispatch(SelectDefaultNotebookAction(notebook: null));
          dispatch(DeviceDataClearedAction());
          dispatch(const LoadNotesAction(notebookId: null));
          dispatch(LoadNotebooksAction());
          dispatch(LoadTagsAction());

          dispatch(initialInstruction);
        },
        title: _locale!.settings_clear_data_title,
        message: _locale!.settings_clear_data_message,
      ),
    );
  }

  Future _setEncryptionKey(Store<AppState> store, SetEncryptionKeyAction action) async {
    if (store.state.accountState.encryptedText != null) {
      try {
        var result = encryptService.decrypt(action.key, store.state.accountState.encryptedText!);
        if (result != configService.settings.encryptedText) {
          store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(
            store.dispatch,
            errorTitle: _locale!.settings_encryption_key_invalid_error_title,
            errorMessage: _locale!.settings_encryption_key_invalid_error_message,
          ));
          return;
        }
      } catch (e) {
        store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(
          store.dispatch,
          errorTitle: _locale!.settings_encryption_key_invalid_error_title,
          errorMessage: _locale!.settings_encryption_key_invalid_error_message,
        ));
        return;
      }
    }
    var settings = await settingsService.getSettings();
    settings.isEncryptionKeyLocked = true;
    await settingsService.setSettings(settings);

    await settingsService.setEncryptionKey(action.key);
    store.dispatch(EncryptionKeySetAction(key: action.key));

    if (action.nextAction != null) {
      store.dispatch(action.nextAction!);
    }
  }
}
