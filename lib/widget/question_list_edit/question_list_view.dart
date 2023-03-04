import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/widget/question_list_edit/question_field_view_model.dart';
import 'package:daymemory/widget/common/edit_text_field.dart';
import 'package:daymemory/widget/question_list_edit/question_list_edit_view_model.dart';
import 'package:flutter/material.dart';

class QuestionListView extends StatelessWidget {
  const QuestionListView(this.viewModel, {Key? key}) : super(key: key);

  final QuestionListEditViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: EditTextField(
              text: viewModel.questionList.text,
              placeholder: viewModel.questionList.placeholder,
              textChangedCommand: viewModel.questionList.textChangedCommand,
            )),
        ReorderableListView.builder(
          shrinkWrap: true,
          itemCount: viewModel.questions.length,
          itemBuilder: (BuildContext context, int index) {
            return _createItem(viewModel.questions[index]);
          },
          onReorderStart: (index) {
            FocusScope.of(context).unfocus();
          },
          onReorder: (int start, int current) {
            viewModel.reorderCommand.command(ItemPositionDto(current, start));
          },
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              viewModel.addQuestionCommand.command();
            },
            child: Container(padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10), child: const Text("+ Add question")),
          ),
        ),
      ],
    );
  }

  Widget _createItem(QuestionFieldViewModel model) {
    return ListTile(
      key: Key(model.fieldId),
      leading: const Icon(Icons.drag_handle),
      title: EditTextField(
        text: model.text,
        placeholder: model.placeholder,
        textChangedCommand: model.textChangedCommand,
      ),
      trailing: GestureDetector(
          child: const Icon(Icons.delete_outline),
          onTap: () {
            if (model.deleteCommand != null) {
              model.deleteCommand!.command();
            }
          }),
    );
  }
}
