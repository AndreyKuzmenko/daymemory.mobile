import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/sync_settings_connector/sync_settings_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/settings/sync_settings_view_model.dart';
import 'package:daymemory/widget/settings/sync_settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SyncSettingsConnector extends PageConnector<SyncSettingsViewModel, SyncSettingsConverter> {
  const SyncSettingsConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, SyncSettingsViewModel viewModel) => SyncSettingsWidget(viewModel: viewModel);

  @override
  SyncSettingsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    //final settingsState = state.settingsState;
    Locale languageLocale = Localizations.localeOf(context);

    final converter = SyncSettingsConverter(
      locale: AppLocalizations.of(context)!,
      dispatch: dispatch,
      languageLocale: languageLocale,
      isSyncing: state.syncState.isSyncing,
      isSyncEnabled: state.settingsState.isSyncEnabled,
      syncStatus: state.syncState.syncStatus,
      isEncryptionEnabled: state.accountState.isEncryptionEnabled,
      encryptionKey: state.settingsState.encryptionKey,
      isAuthenticated: state.accountState.isAuthenticated,
      userEmail: state.accountState.userEmail,
      hasLastSyncSucceeded: state.syncState.hasLastSyncSucceeded,
      lastSyncDateTime: state.syncState.lastSyncDate,
    );
    return converter;
  }
}
