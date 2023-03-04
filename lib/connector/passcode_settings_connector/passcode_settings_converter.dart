import 'dart:ui';

import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/settings/passcode_settings_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PasscodeSettingsConverter extends ViewModelConverter<PasscodeSettingsViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final bool isBiometricEnabled;
  final bool isLocationSavingEnabled;
  final bool isPasscodeEnabled;
  final bool isBiometricAvailable;
  final bool isBiometricActive;
  final bool isSyncing;
  final bool isLocationVisible;
  final DateTime? lastSyncDateTime;
  final bool? hasLastSyncSucceeded;
  final String? syncStatus;
  final String selectedLanguage;
  final String privacyPolicyUrl;
  final Locale languageLocale;
  final bool isAuthenticated;
  final String? userEmail;
  final String passcodeRequireAfterValue;

  PasscodeSettingsConverter(
      {required this.locale,
      required this.dispatch,
      required this.selectedLanguage,
      required this.isBiometricEnabled,
      required this.isBiometricAvailable,
      required this.isLocationSavingEnabled,
      required this.isBiometricActive,
      required this.isSyncing,
      required this.syncStatus,
      required this.hasLastSyncSucceeded,
      required this.lastSyncDateTime,
      required this.privacyPolicyUrl,
      required this.languageLocale,
      required this.userEmail,
      required this.isLocationVisible,
      required this.isAuthenticated,
      required this.passcodeRequireAfterValue,
      required this.isPasscodeEnabled});

  @override
  PasscodeSettingsViewModel build() {
    return PasscodeSettingsViewModel((b) => b
      ..title = locale.settings_passcode_page_title
      ..backCommand = FunctionHolder(() => dispatch((PopBackStackAction())))
      ..screenBlockingOptionTitle = locale.settings_enable_screen_locking_option
      ..screenBlockingToogleCommand = FunctionHolder(() => dispatch((SettingsPasscodeAction(isEnabled: !isPasscodeEnabled))))
      ..isScreenBlockingEnabled = isPasscodeEnabled
      ..biometricOptionTitle = locale.settings_biometric_title_option
      ..requireAfterOptionTitle = locale.settings_passcode_require_after_option
      ..requireAfterOptionValue = passcodeRequireAfterValue
      ..requireAfterCommand = FunctionHolder(() => dispatch(NavigateToPasscodeAfterTimeAction()))
      ..biometricToogleCommand = FunctionHolder(() => dispatch((SettingsBiometricUnlockAction(isEnabled: !isBiometricEnabled))))
      ..isBiometricEnabled = isBiometricEnabled
      ..isBiometricActive = isBiometricActive
      ..isBiometricAvailable = isBiometricAvailable
      ..screenBlockingExplanation = locale.settings_blocking_explanation);
  }
}
