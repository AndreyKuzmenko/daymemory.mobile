import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/common/text_field/text_field_clear.dart';
import 'package:daymemory/widget/edit_notebook/edit_notebook_view_model.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:daymemory/widget/common/button/done_button.dart';

class EditNotebookWidget extends StatefulWidget {
  const EditNotebookWidget({super.key, required this.viewModel});

  final EditNotebookViewModel viewModel;

  @override
  State<EditNotebookWidget> createState() => _EditNotebookWidgetState();
}

class _EditNotebookWidgetState extends State<EditNotebookWidget> {
  late TextEditingController _titleController;

  final _form = GlobalKey<FormState>();

  @override
  void initState() {
    _titleController = TextEditingController(text: widget.viewModel.notebookTitle);
    _titleController.addListener(() {
      widget.viewModel.titleChangedCommand.command(_titleController.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DoneButton(
            height: 40,
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 5),
            click: widget.viewModel.isSaving
                ? null
                : FunctionHolder(() {
                    var isValid = _form.currentState!.validate();
                    if (!isValid) {
                      return;
                    }
                    widget.viewModel.saveCommand.command();
                  }),
            text: widget.viewModel.doneButtonTitle,
          ),
        ],
        leading: NavButtonWidget(onPressed: widget.viewModel.closeCommand, icon: Icons.close),
        centerTitle: true,
        title: Text(
          widget.viewModel.title,
        ),
        backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
      body: SafeArea(
        bottom: false,
        top: false,
        child: Form(
          key: _form,
          child: SettingsList(
            physics: const ClampingScrollPhysics(),
            contentPadding: const EdgeInsets.only(top: 20),
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
                    title: TextFieldClear(
                      controller: _titleController,
                      autofocus: widget.viewModel.notebookId == null,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return widget.viewModel.requiredFieldValidator;
                        }
                        return null;
                      },
                      label: "",
                      placeholder: widget.viewModel.titlePlaceholder,
                    ),
                  ),
                ],
              ),
              SettingsSection(
                tiles: <SettingsTile>[
                  SettingsTile(
                    title: Text(
                      widget.viewModel.sortByOption,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                    ),
                    value: Text(
                      widget.viewModel.sortByOptionValue,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                    ),
                    onPressed: (context) {
                      widget.viewModel.selectSortingTypeCommand.command();
                    },
                  ),
                ],
              ),
              if (widget.viewModel.notebookId != null)
                SettingsSection(
                  tiles: <SettingsTile>[
                    SettingsTile(
                      title: Text(
                        widget.viewModel.deleteButtonTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              height: 1,
                              color: Theme.of(context).extension<ThemeColors>()!.errorColor,
                            ),
                      ),
                      onPressed: (context) {
                        widget.viewModel.deleteCommand.command();
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
