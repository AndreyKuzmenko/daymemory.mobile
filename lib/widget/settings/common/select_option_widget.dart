import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          viewModel.title,
        ),
        leading: NavButtonWidget(onPressed: viewModel.backCommand, icon: Icons.arrow_back_ios),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SettingsList(
          applicationType: ApplicationType.cupertino,
          physics: const ClampingScrollPhysics(),
          platform: DevicePlatform.iOS,
          sections: [_getOptions(context)],
        ),
      ),
    );
  }

  SettingsSection _getOptions(BuildContext context) {
    var tiles = <AbstractSettingsTile>[];

    for (var option in viewModel.options) {
      var tile = SettingsTile(
        title: Text(
          option.value,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
