import 'package:daymemory/widget/side_menu/side_menu_view_model/side_menu_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';

import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SideMenuWidget extends StatelessWidget {
  final SideMenuViewModel viewModel;

  const SideMenuWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      contentPadding: EdgeInsets.only(top: viewModel.isDesktop ? 20 : 60),
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
          tiles: <SettingsTile>[
            SettingsTile(
              leading: const Icon(
                Icons.history,
              ),
              title: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  viewModel.reviewMemoriesMenuOption,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                ),
              ]),
              onPressed: (context) {
                viewModel.reviewMemoriesCommand.command();
              },
            ),
          ],
        ),
        SettingsSection(
            title: Row(
              children: [
                Text(
                  viewModel.notebooksMenuOption,
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: GestureDetector(
                    child: Icon(
                      Icons.filter_list,
                      size: 24.0,
                      color: Theme.of(context).extension<ThemeColors>()!.textSecondaryColor!,
                    ),
                    onTap: () {
                      viewModel.sortNotebooksCommand.command();
                    },
                  ),
                )
              ],
            ),
            tiles: viewModel.items
                .map((x) => SettingsTile(
                      title: Text(
                        x.title,
                        style: x.isSelected
                            ? Theme.of(context).textTheme.titleMedium!.copyWith(
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.secondary,
                                )
                            : Theme.of(context).textTheme.titleMedium!.copyWith(
                                  height: 1,
                                ),
                      ),
                      value: Text(
                        x.notesCount.toString(),
                        style: x.isSelected
                            ? Theme.of(context).textTheme.titleSmall!.copyWith(
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.secondary,
                                )
                            : Theme.of(context).textTheme.titleSmall!.copyWith(
                                  height: 1,
                                ),
                      ),
                      onPressed: (context) {
                        x.selectItemCommand.command();
                      },
                    ))
                .toList()
              ..add(SettingsTile(
                title: Text(
                  viewModel.newNotebookMenuOption,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                ),
                onPressed: (context) {
                  viewModel.newNotebookCommand.command();
                },
                leading: const Icon(Icons.add),
              ))),
        SettingsSection(
          tiles: <SettingsTile>[
            SettingsTile(
              title: Text(
                viewModel.settingsMenuOption,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
              ),
              trailing: viewModel.hasError
                  ? Icon(
                      Icons.error_outline_outlined,
                      color: Theme.of(context).colorScheme.error,
                    )
                  : const SizedBox.shrink(),
              leading: const Icon(Icons.settings_outlined),
              onPressed: (context) {
                viewModel.settingsMenuCommand.command();
              },
            ),
          ],
        ),
      ],
    );
  }
}
