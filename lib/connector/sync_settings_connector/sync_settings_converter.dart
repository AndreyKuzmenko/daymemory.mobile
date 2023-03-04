import 'dart:ui';

import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/account_action.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/redux/action/sync_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/settings/sync_settings_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class SyncSettingsConverter extends ViewModelConverter<SyncSettingsViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final bool isSyncing;
  final DateTime? lastSyncDateTime;
  final bool? hasLastSyncSucceeded;
  final String? syncStatus;
  final bool isAuthenticated;
  final bool isEncryptionEnabled;
  final String? encryptionKey;
  final bool isSyncEnabled;
  final String? userEmail;
  final Locale languageLocale;

  SyncSettingsConverter({
    required this.locale,
    required this.dispatch,
    required this.isSyncing,
    required this.isSyncEnabled,
    required this.isEncryptionEnabled,
    required this.encryptionKey,
    required this.syncStatus,
    required this.hasLastSyncSucceeded,
    required this.lastSyncDateTime,
    required this.userEmail,
    required this.isAuthenticated,
    required this.languageLocale,
  });

  @override
  SyncSettingsViewModel build() {
    return SyncSettingsViewModel((b) => b
      ..title = locale.settings_sync_page_title
      ..backCommand = FunctionHolder(() => dispatch((PopBackStackAction())))
      ..isEncryptionEnabled = isEncryptionEnabled
      ..enableEncryptionOptionTitle = _getEncriptionStatus()
      ..enableEncryptionOptionExplanation = locale.settings_sync_encryption_explanation
      ..syncStateOptionTitle = isSyncEnabled ? locale.settings_sync_disable_sync : locale.settings_sync_enable_sync
      ..syncStateExplanation = isSyncEnabled ? locale.settings_sync_disable_explanation : locale.settings_sync_enable_explanation
      ..isSyncEnabled = isSyncEnabled
      ..encryptionCommand = FunctionHolder(() {
        if (isEncryptionEnabled) {
          dispatch(NavigateToEncryptionAction());
        } else {
          dispatch(EnableAccountEncryptionAction());
        }
      })
      ..syncStatus = _getSyncStatus()
      ..syncOptionTitle = locale.settings_sync_status_option
      ..isSyncing = isSyncing
      ..syncStateCommand = FunctionHolder(() {
        dispatch(SettingsChangeSyncStateAction(isEnabled: !isSyncEnabled));
      })
      ..lastSyncStatusMessage = hasLastSyncSucceeded == null || hasLastSyncSucceeded! ? null : locale.settings_sync_status_failed
      ..syncStatus = _getSyncStatus()
      ..syncStartCommand = FunctionHolder(() => dispatch((StartSyncAction(isManualSync: true)))));
  }

  String _getEncriptionStatus() {
    if (isEncryptionEnabled) {
      if (encryptionKey == null || encryptionKey!.isEmpty) {
        return locale.settings_encryption_set_key;
      }

      return locale.settings_encryption_view_key;
    }

    return locale.settings_encryption_create_key;
  }

  String _getSyncStatus() {
    if (!isSyncing) {
      return "${locale.settings_last_sync_time}  ${lastSyncDateTime != null ? DateFormat(
          'dd.MM.yyyy HH:mm:ss',
          languageLocale.languageCode,
        ).format(
          lastSyncDateTime!.toLocal(),
        ) : locale.settings_sync_never_status}";
    }

    if (syncStatus != null && syncStatus!.isNotEmpty) {
      return syncStatus!;
    }

    return locale.settings_syncing_in_progress;
  }
}
