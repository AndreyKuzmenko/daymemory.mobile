import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/common/version_settings_tile.dart';
import 'package:daymemory/widget/settings/settings_view_model.dart';

import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsWidget extends StatelessWidget {
  final SettingsViewModel viewModel;

  const SettingsWidget({
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                  value: Row(
                    children: [
                      Text(
                        viewModel.selectedLanguage,
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                SettingsTile(
                  title: Text(
                    viewModel.tagsOptionTitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                  leading: const Icon(Icons.tag),
                  value: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                  onPressed: (context) {
                    viewModel.tagsCommand.command();
                  },
                ),
                if (viewModel.isLocationVisible)
                  SettingsTile.switchTile(
                    title: Text(
                      viewModel.locationOptionTitle,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                  value: Row(
                    children: [
                      Text(
                        viewModel.syncStatus,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                              height: 1,
                            )
                            .copyWith(color: viewModel.hasSyncFailed ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.primary),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                  leading: const Icon(Icons.shield_outlined),
                  onPressed: (context) {
                    launchUrl(Uri.parse(viewModel.privacyPolicyUrl));
                  },
                ),
                SettingsTile(
                  title: Text(
                    viewModel.sendEmailToDevelopersTitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                  leading: const Icon(Icons.email_outlined),
                  onPressed: (context) {
                    viewModel.sendEmailToDevelopersCommand.command();
                  },
                ),
                SettingsTile(
                  title: Text(
                    viewModel.introOptionTitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
