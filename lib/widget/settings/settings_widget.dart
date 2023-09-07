import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/common/version_settings_tile.dart';
import 'package:daymemory/widget/settings/settings_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsWidget extends StatelessWidget {
  final SettingsViewModel viewModel;

  const SettingsWidget({
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
            SettingsSection(
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.isAuthenticated ? viewModel.userName ?? "" : viewModel.signinOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  leading: const Icon(Icons.account_circle_outlined),
                  onPressed: (context) {
                    viewModel.accountCommand.command();
                  },
                ),
              ],
            ),
            SettingsSection(
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.selectLanguageOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  value: Row(
                    children: [
                      Text(
                        viewModel.selectedLanguage,
                        style: appTheme.settingsValueLabel,
                      ),
                      const SizedBox(width: 5),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                  leading: const Icon(Icons.language),
                  onPressed: (context) {
                    viewModel.languageSelectorCommand.command();
                  },
                ),
                // SettingsTile(
                //   title: Text(
                //     viewModel.tagsOptionTitle,
                //     style: appTheme.settingsLabel,
                //   ),
                //   leading: const Icon(Icons.tag),
                //   trailing: const Icon(Icons.arrow_forward_ios),
                //   onPressed: (context) {
                //     viewModel.tagsCommand.command();
                //   },
                // ),
                if (viewModel.isLocationVisible)
                  SettingsTile.switchTile(
                    title: Text(
                      viewModel.locationOptionTitle,
                      style: appTheme.settingsLabel,
                    ),
                    onToggle: (value) async {
                      viewModel.locationToogleCommand.command();
                    },
                    initialValue: viewModel.isLocationEnabled,
                    leading: const Icon(Icons.location_on_outlined),
                  ),
                SettingsTile(
                  title: Text(
                    viewModel.passcodeOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  value: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                  leading: const Icon(Icons.key),
                  onPressed: (context) {
                    viewModel.passcodeCommand.command();
                  },
                ),
              ],
            ),
            SettingsSection(
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.syncOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  value: Row(
                    children: [
                      Text(
                        viewModel.syncStatus,
                        style: appTheme.settingsValueLabel.copyWith(color: viewModel.hasSyncFailed ? appTheme.red : appTheme.black),
                      ),
                      const SizedBox(width: 5),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                  leading: const Icon(Icons.cloud_outlined),
                  onPressed: (context) {
                    viewModel.syncCommand.command();
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(viewModel.showInReviewExplanation),
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.showInReviewOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  value: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                  leading: const Icon(Icons.history),
                  onPressed: (context) {
                    viewModel.showInReviewCommand.command();
                  },
                ),
                SettingsTile(
                  title: Text(
                    viewModel.reviewPeriodOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  value: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                  leading: const Icon(Icons.date_range),
                  onPressed: (context) {
                    viewModel.reviewPeriodCommand.command();
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(viewModel.clearDataExplanation),
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.clearDataOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  leading: const Icon(Icons.cleaning_services),
                  onPressed: (context) {
                    viewModel.clearDataCommand.command();
                  },
                ),
              ],
            ),
            SettingsSection(
              tiles: <SettingsTile>[
                SettingsTile(
                  title: Text(
                    viewModel.privacyPolicyOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  leading: const Icon(Icons.shield_outlined),
                  onPressed: (context) {
                    launchUrl(Uri.parse(viewModel.privacyPolicyUrl));
                  },
                ),
                SettingsTile(
                  title: Text(
                    viewModel.sendEmailToDevelopersTitle,
                    style: appTheme.settingsLabel,
                  ),
                  leading: const Icon(Icons.email_outlined),
                  onPressed: (context) {
                    viewModel.sendEmailToDevelopersCommand.command();
                  },
                ),
                SettingsTile(
                  title: Text(
                    viewModel.introOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  leading: const Icon(Icons.flag_outlined),
                  onPressed: (context) {
                    viewModel.introCommand.command();
                  },
                ),
              ],
            ),
            SettingsSection(
              margin: const EdgeInsetsDirectional.only(top: 0, start: 20),
              tiles: <AbstractSettingsTile>[
                VersionSettingsTile(appVersion: viewModel.appVersion),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
