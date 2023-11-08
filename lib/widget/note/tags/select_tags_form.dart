import 'package:daymemory/widget/note/tags/select_tags_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SelectTagsForm extends StatelessWidget {
  const SelectTagsForm({super.key, required this.viewModel});

  final SelectTagsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    return SettingsList(
      applicationType: ApplicationType.cupertino,
      platform: DevicePlatform.iOS,
      physics: const ClampingScrollPhysics(),
      sections: [
        SettingsSection(
          tiles: viewModel.tags
              .map((x) => SettingsTile(
                    title: Text(
                      x.text,
                      style: appTheme.settingsLabel,
                    ),
                    onPressed: (context) {
                      viewModel.toogleTagCommand.command();
                    },
                    trailing: viewModel.selectedTags.any((element) => element == x.id)
                        ? const Icon(
                            Icons.done,
                            color: Colors.black,
                          )
                        : null,
                  ))
              .toList()
            ..add(SettingsTile(
              title: Text(
                viewModel.newTagMenuOption,
                style: appTheme.settingsLabel,
              ),
              onPressed: (context) {
                viewModel.newTagCommand.command();
              },
              leading: const Icon(Icons.add),
            )),
        ),
      ],
    );
  }
}
