import 'package:daymemory/widget/note/select_notebook_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SelectNotebookForm extends StatelessWidget {
  const SelectNotebookForm({Key? key, required this.viewModel}) : super(key: key);

  final SelectNotebookViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    return SettingsList(
      applicationType: ApplicationType.cupertino,
      platform: DevicePlatform.iOS,
      sections: [
        SettingsSection(
          tiles: viewModel.notebooks
              .map((x) => SettingsTile(
                    title: Text(
                      x.title,
                      style: appTheme.settingsLabel,
                    ),
                    onPressed: (context) {
                      viewModel.selectNotebookCommand.command(x.id);
                    },
                    trailing: viewModel.selectedNotebookId == x.id
                        ? const Icon(
                            Icons.done,
                            color: Colors.black,
                          )
                        : null,
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
            )),
        ),
      ],
    );
  }
}
