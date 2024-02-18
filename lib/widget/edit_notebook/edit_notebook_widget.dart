import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/text_field/text_field_clear_widget.dart';
import 'package:daymemory/widget/edit_notebook/edit_notebook_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

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
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: TextButton(
                onPressed: widget.viewModel.isSaving
                    ? null
                    : () async {
                        var isValid = _form.currentState!.validate();
                        if (!isValid) {
                          return;
                        }
                        widget.viewModel.saveCommand.command();
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
          backgroundColor: Colors.white,
          elevation: 0,
        ),
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
                sections: [
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile(
                        title: TextFieldClearWidget(
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
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
                          ),
                          onPressed: (context) {
                            widget.viewModel.deleteCommand.command();
                          },
                        ),
                      ],
                    ),
                ],
              ),
            )));
  }
}
