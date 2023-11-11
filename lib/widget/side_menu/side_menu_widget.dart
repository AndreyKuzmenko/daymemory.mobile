import 'package:daymemory/widget/side_menu/side_menu_view_model/side_menu_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
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
    final appTheme = AppThemeWidget.getTheme(context);

    return SettingsList(
      contentPadding: EdgeInsets.only(top: viewModel.isDesktop ? 20 : 60),
      applicationType: ApplicationType.cupertino,
      platform: DevicePlatform.iOS,
      sections: [
        SettingsSection(
          tiles: <SettingsTile>[
            SettingsTile(
              leading: const Icon(
                Icons.history,
                color: Colors.black,
              ),
              title: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  viewModel.reviewMemoriesMenuOption,
                  style: appTheme.settingsLabel,
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
                    child: const Icon(
                      Icons.filter_list,
                      size: 24.0,
                      color: Colors.black,
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
                        style: x.isSelected ? appTheme.settingsActiveLabel : appTheme.settingsLabel,
                      ),
                      value: Text(
                        x.notesCount.toString(),
                        style: x.isSelected ? appTheme.settingsValueActiveLabel : appTheme.settingsValueLabel,
                      ),
                      onPressed: (context) {
                        x.selectItemCommand.command();
                      },
                    ))
                .toList()
              ..add(SettingsTile(
                title: Text(
                  viewModel.newNotebookMenuOption,
                  style: appTheme.settingsLabel,
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
                style: appTheme.settingsLabel,
              ),
              trailing: viewModel.hasError
                  ? Icon(
                      Icons.error_outline_outlined,
                      color: appTheme.red,
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
