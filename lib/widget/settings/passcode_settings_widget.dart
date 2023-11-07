import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/passcode_settings_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class PasscodeSettingsWidget extends StatelessWidget {
  final PasscodeSettingsViewModel viewModel;

  const PasscodeSettingsWidget({
    super.key,
    required this.viewModel,
  });

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
              title: Text(viewModel.screenBlockingExplanation),
              tiles: <SettingsTile>[
                SettingsTile.switchTile(
                  title: Text(
                    viewModel.screenBlockingOptionTitle,
                    style: appTheme.settingsLabel,
                  ),
                  onToggle: (value) {
                    viewModel.screenBlockingToogleCommand.command();
                  },
                  initialValue: viewModel.isScreenBlockingEnabled,
                  leading: const Icon(Icons.key),
                ),
                if (viewModel.isBiometricAvailable)
                  SettingsTile(
                    title: Text(
                      viewModel.requireAfterOptionTitle,
                      style: appTheme.settingsLabel,
                    ),
                    value: Row(
                      children: [
                        Text(
                          viewModel.requireAfterOptionValue,
                          style: appTheme.settingsValueLabel,
                        ),
                        const SizedBox(width: 5),
                        const Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                    leading: const Icon(Icons.timer_outlined),
                    onPressed: (context) {
                      viewModel.requireAfterCommand.command();
                    },
                  ),
                if (viewModel.isBiometricAvailable && viewModel.isScreenBlockingEnabled)
                  SettingsTile.switchTile(
                    title: Text(
                      viewModel.biometricOptionTitle,
                      style: appTheme.settingsLabel,
                    ),
                    enabled: viewModel.isBiometricActive,
                    onToggle: (value) {
                      viewModel.biometricToogleCommand.command();
                    },
                    initialValue: viewModel.isBiometricEnabled,
                    leading: const Icon(Icons.security),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
