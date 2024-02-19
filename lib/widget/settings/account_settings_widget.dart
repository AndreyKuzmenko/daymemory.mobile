import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/account_settings_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';

import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class AccountSettingsWidget extends StatelessWidget {
  final AccountSettingsViewModel viewModel;

  const AccountSettingsWidget({
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
        backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        elevation: 0,
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
            SettingsSection(
              title: Text(viewModel.accountExplanation),
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.nameOptionTitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                  value: Text(
                    viewModel.nameOptionValue,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                ),
                SettingsTile(
                  title: Text(
                    viewModel.emailOptionTitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                  value: Text(
                    viewModel.emailOptionValue,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                ),
              ],
            ),
            SettingsSection(
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.logoutOptionTitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                  leading: const Icon(Icons.exit_to_app),
                  onPressed: (context) {
                    viewModel.logoutCommand.command();
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
