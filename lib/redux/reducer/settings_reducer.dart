import 'package:daymemory/redux/state/settings_state/settings_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

import '../action/settings_action.dart';

Reducer<SettingsState> get settingsReducer {
  return combineReducers<SettingsState>([
    TypedReducer(_settingsSaveLocationEnabledAction).call,
    TypedReducer(_settingsSaveLocationDisabledAction).call,
    TypedReducer(_settingsScreenBlockingAction).call,
    TypedReducer(_settingsBiometricUnlockAction).call,
    TypedReducer(_settingsLoaded).call,
    TypedReducer(_changeLanguageAction).call,
    TypedReducer(_changePasscodeRequireAfterAction).call,
    TypedReducer(_settingsSyncStateChangedAction).call,
    TypedReducer(_encryptionKeyGeneratedAction).call,
    TypedReducer(_encryptionKeySetAction).call,
  ]);
}

SettingsState _settingsSaveLocationEnabledAction(SettingsState state, SettingsSaveLocationEnabledAction action) {
  return state.rebuild(
    (b) => b..isLocationSavingEnabled = true,
  );
}

SettingsState _settingsSaveLocationDisabledAction(SettingsState state, SettingsSaveLocationDisabledAction action) {
  return state.rebuild(
    (b) => b..isLocationSavingEnabled = false,
  );
}

SettingsState _settingsScreenBlockingAction(SettingsState state, SettingsPasscodeAction action) {
  return state.rebuild((b) => b
    ..isPasscodeEnabled = action.isEnabled
    ..isBiometricActive = action.isEnabled
    ..isBiometricEnabled = false);
}

SettingsState _settingsBiometricUnlockAction(SettingsState state, SettingsBiometricUnlockAction action) {
  return state.rebuild(
    (b) => b..isBiometricEnabled = action.isEnabled,
  );
}

SettingsState _settingsLoaded(SettingsState state, SettingsLoadedAction action) {
  return state.rebuild((b) => b
    ..isBiometricEnabled = action.isBiometricEnabled
    ..availableLanguages = action.availableLanguages
    ..isBiometricActive = action.isBiometricActive
    ..availableLanguages = action.availableLanguages
    ..isBiometricAvailable = action.isBiometricAvailable
    ..reviewSettings = action.reviewSettings
    ..isLocationSavingEnabled = action.isLocationSavingEnabled
    ..isPasscodeEnabled = action.isPasscodeEnabled
    ..isSyncEnabled = action.isSyncEnabled
    ..isEncryptionKeyLocked = action.isEncryptionKeyLocked
    ..encryptionKey = action.encryptionKey
    ..language = action.language);
}

SettingsState _changeLanguageAction(SettingsState state, SettingsSelectLanguageAction action) {
  return state.rebuild(
    (b) => b..language = action.languageCode,
  );
}

SettingsState _changePasscodeRequireAfterAction(SettingsState state, SettingsPasscodeRequireAfterAction action) {
  return state.rebuild(
    (b) => b..passcodeRequireAfterSeconds = action.seconds,
  );
}

SettingsState _settingsSyncStateChangedAction(SettingsState state, SettingsSyncStateChangedAction action) {
  return state.rebuild(
    (b) => b..isSyncEnabled = action.isEnabled,
  );
}

SettingsState _encryptionKeyGeneratedAction(SettingsState state, EncryptionKeyGeneratedAction action) {
  return state.rebuild(
    (b) => b
      ..encryptionKey = action.key
      ..isEncryptionKeyLocked = true,
  );
}

SettingsState _encryptionKeySetAction(SettingsState state, EncryptionKeySetAction action) {
  return state.rebuild(
    (b) => b
      ..encryptionKey = action.key
      ..isEncryptionKeyLocked = true,
  );
}
