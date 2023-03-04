import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/sync_settings_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SyncSettingsWidget extends StatelessWidget {
  final SyncSettingsViewModel viewModel;

  const SyncSettingsWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    return Scaffold(
      appBar: AppBar(
        leading: NavButtonWidget(onPressed: viewModel.backCommand, icon: Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(viewModel.title, style: appTheme.navigationTitle),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        child: SettingsList(
          applicationType: ApplicationType.cupertino,
          platform: DevicePlatform.iOS,
          sections: [
            if (viewModel.isSyncEnabled)
              SettingsSection(
                tiles: <SettingsTile>[
                  SettingsTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          viewModel.syncOptionTitle,
                          style: appTheme.settingsLabel,
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            viewModel.syncStatus,
                            style: const TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    value: viewModel.isSyncing
                        ? const CupertinoActivityIndicator()
                        : viewModel.lastSyncStatusMessage == null
                            ? null
                            : Text(viewModel.lastSyncStatusMessage!, style: const TextStyle(color: Colors.red)),
                    leading: const Icon(Icons.sync),
                    onPressed: (context) {
                      if (!viewModel.isSyncing) {
                        viewModel.syncStartCommand.command();
                      }
                    },
                  ),
                ],
              ),
            SettingsSection(
              title: Text(viewModel.syncStateExplanation),
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.syncStateOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  onPressed: (context) {
                    viewModel.syncStateCommand.command();
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(viewModel.enableEncryptionOptionExplanation),
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.enableEncryptionOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  onPressed: (context) {
                    viewModel.encryptionCommand.command();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
