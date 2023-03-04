import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/passcode_settings_connector/passcode_settings_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/text_localization.dart';
import 'package:daymemory/widget/settings/passcode_settings_view_model.dart';
import 'package:daymemory/widget/settings/passcode_settings_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PasscodeSettingsConnector extends PageConnector<PasscodeSettingsViewModel, PasscodeSettingsConverter> {
  const PasscodeSettingsConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, PasscodeSettingsViewModel viewModel) => PasscodeSettingsWidget(viewModel: viewModel);

  @override
  PasscodeSettingsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final settingsState = state.settingsState;
    final config = AppThemeWidget.getConfigurationSettings(context);
    Locale languageLocale = Localizations.localeOf(context);

    final converter = PasscodeSettingsConverter(
        locale: AppLocalizations.of(context)!,
        dispatch: dispatch,
        languageLocale: languageLocale,
        selectedLanguage: state.settingsState.availableLanguages.firstWhere((element) => element.code == state.settingsState.language).name,
        privacyPolicyUrl: config.privacyPolicyUrl,
        isBiometricActive: settingsState.isBiometricActive,
        isBiometricEnabled: settingsState.isBiometricEnabled,
        isBiometricAvailable: settingsState.isBiometricAvailable,
        isSyncing: state.syncState.isSyncing,
        passcodeRequireAfterValue: TextLocalization.getPasscodeRequireAfterOptions(context).firstWhere((element) => element.seconds == settingsState.passcodeRequireAfterSeconds).title,
        syncStatus: state.syncState.syncStatus,
        isAuthenticated: state.accountState.isAuthenticated,
        userEmail: state.accountState.userEmail,
        hasLastSyncSucceeded: state.syncState.hasLastSyncSucceeded,
        lastSyncDateTime: state.syncState.lastSyncDate,
        isLocationSavingEnabled: settingsState.isLocationSavingEnabled,
        isLocationVisible: state.deviceState.deviceType == DeviceType.phone || state.deviceState.deviceType == DeviceType.tablet,
        isPasscodeEnabled: settingsState.isPasscodeEnabled);
    return converter;
  }
}
