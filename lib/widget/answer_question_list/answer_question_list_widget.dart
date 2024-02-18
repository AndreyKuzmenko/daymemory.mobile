import 'package:daymemory/widget/answer_question_list/answer_question_view_model.dart';
import 'package:daymemory/widget/note/edit_note_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerQuestionListWidget extends StatefulWidget {
  final AnswerQuestionViewModel viewModel;

  const AnswerQuestionListWidget({
    super.key,
    required this.viewModel,
  });

  @override
  State<AnswerQuestionListWidget> createState() => _AnswerQuestionListWidgetState();
}

class _AnswerQuestionListWidgetState extends State<AnswerQuestionListWidget> {
  var _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: FloatingActionButton(
              heroTag: UniqueKey(),
              //backgroundColor: appTheme.colorAccent,TODO:theme
              onPressed: widget.viewModel.isSaving
                  ? null
                  : () async {
                      widget.viewModel.nextCommand.command();
                      _key = UniqueKey();
                    },
              child: widget.viewModel.isSaving ? const CupertinoActivityIndicator() : const Icon(Icons.done),
            )),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              widget.viewModel.closeCommand.command();
            },
            child: const Icon(Icons.close, size: 28.0, color: Colors.black)),
        elevation: 0,
        title: Text(widget.viewModel.title),
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child: EditNoteForm(
          key: _key,
          viewModel: widget.viewModel.editViewModel,
        ),
      ),
    );
  }
}
