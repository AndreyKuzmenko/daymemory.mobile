import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/text_field/text_field_clear.dart';
import 'package:daymemory/widget/settings/encryption_key_settings_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class EncryptionKeySettingsWidget extends StatefulWidget {
  const EncryptionKeySettingsWidget({super.key, required this.viewModel});

  final EncryptionKeySettingsViewModel viewModel;

  @override
  State<EncryptionKeySettingsWidget> createState() => _EncryptionKeySettingsWidgetState();
}

class _EncryptionKeySettingsWidgetState extends State<EncryptionKeySettingsWidget> {
  late TextEditingController _titleController;

  final _form = GlobalKey<FormState>();

  @override
  void initState() {
    _titleController = TextEditingController(text: widget.viewModel.encryptionKeyValue ?? "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: widget.viewModel.isEncryptionKeyLocked
                  ? null
                  : TextButton(
                      onPressed: widget.viewModel.isSaving
                          ? null
                          : () async {
                              var isValid = _form.currentState!.validate();
                              if (!isValid) {
                                return;
                              }
                              widget.viewModel.saveCommand.command(_titleController.text);
                            },
                      child: Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: !widget.viewModel.isSaving
                            ? Text(
                                widget.viewModel.doneButtonTitle,
                                style: const TextStyle(color: Colors.black, fontSize: 15.0),
                              )
                            : const CupertinoActivityIndicator(),
                      ),
                    ),
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
                    title: Text(widget.viewModel.encryptionKeyExplanation),
                    tiles: <SettingsTile>[
                      SettingsTile(
                        title: TextFieldClear(
                          controller: _titleController,
                          readOnly: widget.viewModel.isEncryptionKeyLocked,
                          autofocus: widget.viewModel.encryptionKeyValue == null,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFieldValidator;
                            }
                            return null;
                          },
                          label: "",
                          placeholder: widget.viewModel.encryptionKeyPlaceholder,
                        ),
                      ),
                    ],
                  ),
                  if (widget.viewModel.isEncryptionKeyLocked)
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile(
                          title: Text(
                            widget.viewModel.copyToClipboardOptionTitle,
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                          ),
                          onPressed: (context) {
                            widget.viewModel.copyToClipboardCommand.command(_titleController.text);
                          },
                        ),
                      ],
                    ),
                ],
              ),
            )));
  }
}
