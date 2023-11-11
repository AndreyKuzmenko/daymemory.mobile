import 'package:daymemory/widget/question-lists/question_list_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionsListItem extends StatelessWidget {
  const QuestionsListItem({super.key, required this.viewModel});

  final QuestionListViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: Key(viewModel.questionListId),
      onTap: () {
        if (viewModel.questions.isEmpty) {
          //TODO:SHOW ERROR MESSAGE
          return;
        }

        viewModel.answerQuestionListCommand.command();
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: double.infinity, child: Text(viewModel.text, style: const TextStyle(fontSize: 18))),
                  Container(width: double.infinity, margin: const EdgeInsets.fromLTRB(0, 5, 0, 0), child: Text("${viewModel.questions.length} questions", style: const TextStyle(fontSize: 14))),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _showContextMenu(context);
              },
              child: const SizedBox(
                width: 40,
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showContextMenu(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(viewModel.menuCancel),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              viewModel.editQuestionListCommand.command();
            },
            child: Text(viewModel.menuEdit),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {
              Navigator.pop(context);
              viewModel.deleteQuestionListCommand.command();
            },
            isDestructiveAction: true,
            child: Text(viewModel.menuDelete),
          ),
        ],
      ),
    );
  }
}
