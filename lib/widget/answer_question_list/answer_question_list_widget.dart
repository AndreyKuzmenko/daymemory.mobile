import 'package:daymemory/widget/answer_question_list/answer_question_view_model.dart';
import 'package:daymemory/widget/note/edit_note_form.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnswerQuestionListWidget extends StatefulWidget {
  final AnswerQuestionViewModel viewModel;

  const AnswerQuestionListWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<AnswerQuestionListWidget> createState() => _AnswerQuestionListWidgetState();
}

class _AnswerQuestionListWidgetState extends State<AnswerQuestionListWidget> {
  var _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: FloatingActionButton(
              heroTag: UniqueKey(),
              backgroundColor: appTheme.colorAccent,
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
          iconTheme: const IconThemeData(color: Colors.black),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                widget.viewModel.closeCommand.command();
              },
              child: const Icon(Icons.close, size: 28.0, color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(widget.viewModel.title, style: appTheme.navigationTitle)),
      backgroundColor: appTheme.bodyBackgroundColor,
      body: SafeArea(bottom: false, top: false, child: EditNoteForm(key: _key, viewModel: widget.viewModel.editViewModel)),
    );
  }
}
