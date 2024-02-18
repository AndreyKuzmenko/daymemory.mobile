import 'package:daymemory/widget/question_list_edit/question_list_edit_view_model.dart';
import 'package:daymemory/widget/question_list_edit/question_list_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditQuestionWidget extends StatefulWidget {
  const EditQuestionWidget({super.key, required this.viewModel});

  final QuestionListEditViewModel viewModel;

  @override
  State<EditQuestionWidget> createState() => _EditQuestionWidgetState();
}

class _EditQuestionWidgetState extends State<EditQuestionWidget> {
  final _form = GlobalKey<FormState>();

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
                        final isValid = _form.currentState!.validate();
                        if (!isValid) {
                          return;
                        }
                        widget.viewModel.saveCommand.command();
                      },
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Theme.of(context).primaryColor,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: !widget.viewModel.isSaving
                      ? Text(
                          AppLocalizations.of(context)!.done_nav_button,
                          style: const TextStyle(color: Colors.white, fontSize: 15.0),
                        )
                      : const CupertinoActivityIndicator(),
                ),
              ),
            ),
          ],
          leading: GestureDetector(
              onTap: () {
                widget.viewModel.closeCommand.command();
              },
              child: const Icon(Icons.close, size: 28.0, color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          bottom: false,
          top: false,
          child: Form(key: _form, child: QuestionListView(widget.viewModel)),
        ));
  }
}
