import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/settings_connector/settings_converter.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/settings/settings_view_model.dart';
import 'package:daymemory/widget/settings/settings_widget.dart';
import 'package:daymemory/widget/theme/app_configuration_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsConnector extends PageConnector<SettingsViewModel, SettingsConverter> {
  const SettingsConnector({super.key});

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(LoadSettingsAction(null));
  }

  @override
  Widget buildWidget(BuildContext context, SettingsViewModel viewModel) => SettingsWidget(viewModel: viewModel);

  @override
  SettingsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final settingsState = state.settingsState;
    final config = AppConfigurationWidget.getConfigurationSettings(context);
    Locale languageLocale = Localizations.localeOf(context);
    var deviceInfo = AppConfigurationWidget.getDeviceInfo(context);

    final converter = SettingsConverter(
        locale: AppLocalizations.of(context)!,
        dispatch: dispatch,
        appVersion: deviceInfo.appVersionName,
        languageLocale: languageLocale,
        selectedThemeMode: ThemeMode.values[state.settingsState.themeMode.toInt()],
        selectedLanguage: state.settingsState.availableLanguages.firstWhere((element) => element.code == state.settingsState.language).name,
        privacyPolicyUrl: config.privacyPolicyUrl,
        isBiometricActive: settingsState.isBiometricActive,
        isBiometricEnabled: settingsState.isBiometricEnabled,
        isSyncing: state.syncState.isSyncing,
        isSyncEnabled: state.settingsState.isSyncEnabled,
        syncStatus: state.syncState.syncStatus,
        isAuthenticated: state.accountState.isAuthenticated,
        userName: "${state.accountState.firstName ?? ''} ${state.accountState.lastName ?? ''}",
        hasLastSyncSucceeded: state.syncState.hasLastSyncSucceeded,
        lastSyncDateTime: state.syncState.lastSyncDate,
        isBiometricAvailable: settingsState.isBiometricAvailable,
        isLocationSavingEnabled: settingsState.isLocationSavingEnabled,
        isLocationVisible: state.deviceState.deviceType == DeviceType.phone || state.deviceState.deviceType == DeviceType.tablet,
        isScreenBlockingEnabled: settingsState.isPasscodeEnabled);
    return converter;
  }
}
