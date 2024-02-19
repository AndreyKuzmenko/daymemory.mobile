import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/sync_settings_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SyncSettingsWidget extends StatelessWidget {
  final SyncSettingsViewModel viewModel;

  const SyncSettingsWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: NavButtonWidget(onPressed: viewModel.backCommand, icon: Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(
          viewModel.title,
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
      ),
      backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
      body: SafeArea(
        bottom: false,
        child: SettingsList(
          applicationType: ApplicationType.cupertino,
          platform: DevicePlatform.iOS,
          lightTheme: SettingsThemeData(
            settingsListBackground: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
            settingsSectionBackground: Theme.of(context).extension<ThemeColors>()!.backgroundPrimaryColor,
            tileHighlightColor: Theme.of(context).highlightColor,
            dividerColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
            leadingIconsColor: Theme.of(context).extension<ThemeColors>()!.textSecondaryColor,
          ),
          darkTheme: SettingsThemeData(
            settingsListBackground: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
            settingsSectionBackground: Theme.of(context).extension<ThemeColors>()!.backgroundPrimaryColor,
            tileHighlightColor: Theme.of(context).highlightColor,
            dividerColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
            leadingIconsColor: Theme.of(context).extension<ThemeColors>()!.textSecondaryColor,
          ),
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
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
