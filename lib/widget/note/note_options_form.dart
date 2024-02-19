import 'package:daymemory/widget/note/note_options_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';

import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class NoteOptionsForm extends StatelessWidget {
  const NoteOptionsForm({super.key, required this.viewModel});

  final NoteOptionsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SettingsList(
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
      physics: const ClampingScrollPhysics(),
      sections: [
        SettingsSection(
          tiles: <SettingsTile>[
            SettingsTile(
              leading: const Icon(
                Icons.bookmark_border,
              ),
              value: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      viewModel.notebookLabel,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                  Text(
                    viewModel.notebookTitle ?? "",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                ],
              ),
              onPressed: (context) {
                viewModel.selectNotebookCommand.command();
              },
            ),
            SettingsTile(
              leading: const Icon(
                Icons.tag_outlined,
              ),
              value: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      viewModel.tagsLabel,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                  Text(
                    viewModel.tagsValue,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                  ),
                ],
              ),
              onPressed: (context) {
                viewModel.selectTagsCommand.command();
              },
            ),
            SettingsTile(
              leading: const Icon(
                Icons.calendar_month_outlined,
              ),
              value: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      viewModel.dateLabel,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                  Text(
                    viewModel.formatedDate,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          height: 1,
                        ),
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
                  viewModel.changeDateCommand.command(midDay);
                }
              },
            ),
            SettingsTile(
              leading: const Icon(
                Icons.location_on_outlined,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      viewModel.locationLabel,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                  Text(
                    viewModel.location?.address ?? viewModel.nolocationText,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
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
