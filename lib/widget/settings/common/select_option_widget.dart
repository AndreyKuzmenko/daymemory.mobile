import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:daymemory/widget/theme/app_theme.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SelectOptionWidget extends StatelessWidget {
  final SelectOptionViewModel viewModel;

  const SelectOptionWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.getTheme(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.title, style: theme.navigationTitle),
        leading: NavButtonWidget(onPressed: viewModel.backCommand, icon: Icons.arrow_back_ios),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SettingsList(
          applicationType: ApplicationType.cupertino,
          platform: DevicePlatform.iOS,
          sections: [_getOptions(theme)],
        ),
      ),
    );
  }

  SettingsSection _getOptions(IAppTheme theme) {
    var tiles = <AbstractSettingsTile>[];

    for (var option in viewModel.options) {
      var tile = SettingsTile(
        title: Text(
          option.value,
          style: theme.settingsLabel,
        ),
        onPressed: (context) {
          viewModel.optionSelectorCommand.command(option.key);
        },
        trailing: viewModel.selectedOptionId == option.key
            ? const Icon(
                Icons.check,
                color: Colors.black,
              )
            : const SizedBox.shrink(),
      );
      tiles.add(tile);
    }

    return SettingsSection(
      tiles: tiles,
      title: Text(viewModel.explanation ?? ""),
    );
  }
}
