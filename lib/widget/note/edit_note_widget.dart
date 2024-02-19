import 'package:daymemory/widget/common/button/done_button.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/note/edit_note_form.dart';
import 'package:daymemory/widget/note/editnote_view_model.dart';
import 'package:flutter/material.dart';

class EditNoteWidget extends StatelessWidget {
  const EditNoteWidget({super.key, required this.viewModel});

  final EditNoteViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DoneButton(
            height: 40,
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 5),
            click: viewModel.isSaving ? null : viewModel.saveCommand,
            text: viewModel.doneButtonText,
          ),
        ],
        title: GestureDetector(
          onTap: () {
            viewModel.selectNotebookCommand.command();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  overflow: TextOverflow.fade,
                  viewModel.notebookTitle,
                ),
              ),
              const Icon(Icons.expand_more)
            ],
          ),
        ),
        leading: NavButtonWidget(
          onPressed: viewModel.closeCommand,
          icon: Icons.close,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child: EditNoteForm(viewModel: viewModel),
      ),
    );
  }
}
