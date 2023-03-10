import 'package:daymemory/widget/note/note_options_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class NoteOptionsForm extends StatelessWidget {
  const NoteOptionsForm({Key? key, required this.viewModel}) : super(key: key);

  final NoteOptionsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    return SettingsList(
      applicationType: ApplicationType.cupertino,
      platform: DevicePlatform.iOS,
      sections: [
        SettingsSection(
          tiles: <SettingsTile>[
            SettingsTile(
              leading: const Icon(
                Icons.bookmark_border,
                color: Colors.black,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      viewModel.notebookLabel,
                      style: appTheme.regular12,
                    ),
                  ),
                  Text(
                    viewModel.notebookTitle ?? "",
                    style: appTheme.settingsLabel,
                  ),
                ],
              ),
              onPressed: (context) {
                viewModel.notebookSelectorCommand.command();
              },
            ),
            SettingsTile(
              leading: const Icon(
                Icons.calendar_month_outlined,
                color: Colors.black,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      viewModel.dateLabel,
                      style: appTheme.regular12,
                    ),
                  ),
                  Text(
                    viewModel.formatedDate,
                    style: appTheme.settingsLabel,
                  ),
                ],
              ),
              onPressed: (context) async {
                var date = await showDatePicker(
                  context: context,
                  initialDate: viewModel.date,
                  firstDate: DateTime(1900, 1, 1, 0, 0),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  var midDay = date.add(const Duration(hours: 12));
                  viewModel.dateChangedCommand.command(midDay);
                }
              },
            ),
            SettingsTile(
              leading: const Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      viewModel.locationLabel,
                      style: appTheme.regular12,
                    ),
                  ),
                  Text(
                    viewModel.location?.address ?? viewModel.nolocationText,
                    style: appTheme.settingsLabel,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
