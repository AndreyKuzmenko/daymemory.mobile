import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/settings/settings_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsConverter extends ViewModelConverter<SettingsViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final bool isBiometricEnabled;
  final bool isLocationSavingEnabled;
  final bool isScreenBlockingEnabled;
  final bool isBiometricAvailable;
  final bool isBiometricActive;
  final bool isSyncing;
  final bool isSyncEnabled;
  final bool isLocationVisible;
  final DateTime? lastSyncDateTime;
  final bool? hasLastSyncSucceeded;
  final String? syncStatus;
  final String selectedLanguage;
  final String privacyPolicyUrl;
  final Locale languageLocale;
  final ThemeMode selectedThemeMode;
  final bool isAuthenticated;
  final String? userName;
  final String appVersion;

  SettingsConverter(
      {required this.locale,
      required this.dispatch,
      required this.selectedLanguage,
      required this.selectedThemeMode,
      required this.isBiometricEnabled,
      required this.isBiometricAvailable,
      required this.isLocationSavingEnabled,
      required this.isBiometricActive,
      required this.isSyncing,
      required this.isSyncEnabled,
      required this.syncStatus,
      required this.hasLastSyncSucceeded,
      required this.lastSyncDateTime,
      required this.privacyPolicyUrl,
      required this.languageLocale,
      required this.userName,
      required this.isLocationVisible,
      required this.isAuthenticated,
      required this.appVersion,
      required this.isScreenBlockingEnabled});

  @override
  SettingsViewModel build() {
    return SettingsViewModel((b) => b
      ..title = locale.settings_page_title
      ..appVersion = "${locale.settings_app_version}$appVersion"
      ..backCommand = FunctionHolder(() => dispatch((PopBackStackAction())))
      ..isAuthenticated = isAuthenticated
      ..userName = userName
      ..signinOptionTitle = locale.settings_signin_option
      ..accountCommand = FunctionHolder(() {
        if (isAuthenticated) {
          dispatch(NavigateToAccountAction());
        } else {
          dispatch(NavigateToLogInAction());
        }
      })
      ..passcodeOptionTitle = locale.settings_passcode_option
      ..passcodeCommand = FunctionHolder(() => dispatch((NavigateToPasscodeAction())))
      ..locationOptionTitle = locale.settings_enable_location_saving_option
      ..isLocationEnabled = isLocationSavingEnabled
      ..isLocationVisible = isLocationVisible
      ..hasSyncFailed = hasLastSyncSucceeded != null && !hasLastSyncSucceeded!
      ..locationToogleCommand = FunctionHolder(() => dispatch((SettingsSaveLocationAction(isEnabled: !isLocationSavingEnabled))))
      ..screenBlockingExplanation = locale.settings_blocking_explanation
      ..showInReviewExplanation = locale.settings_show_in_review_explanation
      ..syncOptionTitle = locale.settings_sync_option
      ..syncStatus = _getSyncStatus()
      ..syncCommand = FunctionHolder(() {
        if (isAuthenticated) {
          dispatch(NavigateToSyncAction());
        } else {
          dispatch(NavigateToLogInAction());
        }
      })
      ..clearDataOptionTitle = locale.settings_clear_data
      ..clearDataExplanation = locale.settings_account_clear_data_explanation
      ..clearDataCommand = FunctionHolder(() {
        dispatch(ClearDeviceDataAction());
      })
      ..clearCacheOptionTitle = locale.settings_clear_cache
      ..clearCacheCommand = FunctionHolder(() {
        dispatch(ClearCacheAction());
      })
      ..selectLanguageOptionTitle = locale.settings_language_option
      ..selectedLanguage = selectedLanguage
      ..languageSelectorCommand = FunctionHolder(() => dispatch((NavigateToLanguageSelectionAction())))
      ..selectThemeTypeOptionTitle = locale.settings_select_theme_option
      ..themeModeValue = _getThemeModeValue(selectedThemeMode)
      ..themeTypeSelectorCommand = FunctionHolder(() => dispatch((NavigateToThemeModeAction())))
      ..showInReviewOptionTitle = locale.settings_show_in_review_option
      ..showInReviewCommand = FunctionHolder(() => dispatch((NavigateToShowInReviewAction())))
      ..reviewPeriodOptionTitle = locale.settings_review_period_option
      ..reviewPeriodCommand = FunctionHolder(() => dispatch((NavigateToSelectPeriodReviewAction())))
      ..tagsOptionTitle = locale.settings_tags_option
      ..tagsCommand = FunctionHolder(() => dispatch((NavigateToTagsAction())))
      ..sendEmailToDevelopersTitle = locale.settings_send_email_to_developers_option
      ..sendEmailToDevelopersCommand = FunctionHolder(() => dispatch((SendEmailToDevelopersAction())))
      ..privacyPolicyUrl = privacyPolicyUrl
      ..introOptionTitle = locale.settings_intro_option
      ..introCommand = FunctionHolder(() => dispatch((NavigateToOnboardingAction())))
      ..privacyPolicyOptionTitle = locale.settings_privacy_policy_option);
  }

  String _getSyncStatus() {
    if (!isSyncEnabled) {
      return locale.settings_sync_status_off;
    }

    if (isAuthenticated) {
      if (hasLastSyncSucceeded != null && !hasLastSyncSucceeded!) {
        return locale.settings_sync_status_failed;
      }
      return locale.settings_sync_status_on;
    } else {
      return locale.settings_sync_status_off;
    }
  }

  String _getThemeModeValue(ThemeMode themeMode) {
    if (themeMode == ThemeMode.system) {
      return locale.settings_theme_mode_system;
    } else if (themeMode == ThemeMode.light) {
      return locale.settings_theme_mode_light;
    } else {
      return locale.settings_theme_mode_dark;
    }
  }
}
