import 'package:daymemory/widget/note/tags/select_tags_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';

import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SelectTagsForm extends StatelessWidget {
  const SelectTagsForm({super.key, required this.viewModel});

  final SelectTagsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      applicationType: ApplicationType.cupertino,
      platform: DevicePlatform.iOS,
      physics: const ClampingScrollPhysics(),
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
          tiles: viewModel.tags
              .map((x) => SettingsTile(
                    title: Text(
                      x.text,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                    ),
                    onPressed: (context) {
                      viewModel.toogleTagCommand.command(x.id);
                    },
                    trailing: viewModel.selectedTags.any((element) => element == x.id)
                        ? const Icon(
                            Icons.done,
                          )
                        : null,
                  ))
              .toList()
            ..add(SettingsTile(
              title: Text(
                viewModel.newTagMenuOption,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
