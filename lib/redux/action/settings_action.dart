import 'package:daymemory/data/dtos/language_dto.dart';
import 'package:daymemory/services/settings_service/storage_review_settings.dart';
import 'package:flutter/material.dart';

import 'common_action.dart';

class SettingsSaveLocationAction implements ILoggingAction {
  final bool isEnabled;

  const SettingsSaveLocationAction({required this.isEnabled});

  @override
  String toLogString() {
    return 'Settings Save Location Action: $isEnabled';
  }
}

class SettingsSaveLocationEnabledAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Settings Save Location Enabled Action';
  }
}

class SettingsSaveLocationDisabledAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Settings Save Location Disabled Action';
  }
}

class SettingsPasscodeAction implements ILoggingAction {
  final bool isEnabled;

  const SettingsPasscodeAction({required this.isEnabled});

  @override
  String toLogString() {
    return 'Settings Passcode Action: $isEnabled';
  }
}

class SettingsBiometricUnlockAction implements ILoggingAction {
  final bool isEnabled;

  const SettingsBiometricUnlockAction({required this.isEnabled});

  @override
  String toLogString() {
    return 'Settings Biometric Unlock Action: $isEnabled';
  }
}

class SettingsSelectLanguageAction implements ILoggingAction {
  final String languageCode;

  const SettingsSelectLanguageAction({required this.languageCode});

  @override
  String toLogString() {
    return 'Settings Select Language Action: $languageCode';
  }
}

class SettingsSelectThemeModeAction implements ILoggingAction, ITrackAction {
  final ThemeMode themeMode;

  const SettingsSelectThemeModeAction({required this.themeMode});

  @override
  String toLogString() {
    return 'Select Theme Mode Action: $themeMode';
  }
}

class SettingsPasscodeRequireAfterAction implements ILoggingAction {
  final int seconds;

  const SettingsPasscodeRequireAfterAction({required this.seconds});

  @override
  String toLogString() {
    return 'Settings Passcode Require After Action: $seconds';
  }
}

class LoadSettingsAction implements ILoggingAction {
  final dynamic nextAction;

  LoadSettingsAction(this.nextAction);

  @override
  String toLogString() {
    return 'Load Settings Action';
  }
}

class SettingsLoadedAction implements ILoggingAction {
  bool isLocationSavingEnabled;

  bool isBiometricEnabled;

  bool isBiometricActive;

  bool isBiometricAvailable;

  bool isPasscodeEnabled;

  bool isSyncEnabled;

  List<LanguageDto> availableLanguages;

  StorageReviewSettings reviewSettings;

  int passcodeRequireAfterSeconds;

  String language;

  String? encryptionKey;

  bool isEncryptionKeyLocked;

  ThemeMode themeMode;

  SettingsLoadedAction(
      {required this.isLocationSavingEnabled,
      required this.isBiometricActive,
      required this.isBiometricAvailable,
      required this.isBiometricEnabled,
      required this.availableLanguages,
      required this.isPasscodeEnabled,
      required this.isSyncEnabled,
      required this.reviewSettings,
      required this.passcodeRequireAfterSeconds,
      required this.encryptionKey,
      required this.isEncryptionKeyLocked,
      required this.themeMode,
      required this.language});

  @override
  String toLogString() {
    return 'Settings Loaded Action';
  }
}

class ClearDeviceDataAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Clear Device Data Action';
  }
}

class SendEmailToDevelopersAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Send Email To Developers Action';
  }
}

class DeviceDataClearedAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Device Data Cleared Action';
  }
}

class UpdateReviewSettingsAction implements ILoggingAction {
  final ReviewPeriod period;

  final bool isEnabled;

  UpdateReviewSettingsAction({required this.period, required this.isEnabled});

  @override
  String toLogString() {
    return 'Update Review Settings Action';
  }
}

class SettingsChangeSyncStateAction implements ILoggingAction {
  final bool isEnabled;

  SettingsChangeSyncStateAction({required this.isEnabled});

  @override
  String toLogString() {
    return 'Settings Change Sync State Action';
  }
}

class SettingsSyncStateChangedAction implements ILoggingAction {
  final bool isEnabled;

  SettingsSyncStateChangedAction({required this.isEnabled});

  @override
  String toLogString() {
    return 'Settings Sync State Changed Action';
  }
}

class EncryptionKeyGeneratedAction implements ILoggingAction, ITrackAction {
  final String key;

  EncryptionKeyGeneratedAction({required this.key});

  @override
  String toLogString() {
    return 'Encryption Key Generated Action';
  }
}

class SetEncryptionKeyAction implements ILoggingAction {
  final String key;
  final dynamic nextAction;

  SetEncryptionKeyAction({
    required this.key,
    this.nextAction,
  });

  @override
  String toLogString() {
    return 'Set Encryption Key Action';
  }
}

class EncryptionKeySetAction implements ILoggingAction, ITrackAction {
  final String key;

  EncryptionKeySetAction({required this.key});

  @override
  String toLogString() {
    return 'Encryption Key Set Action';
  }
}
