import 'package:daymemory/connector/edit_question_list_connector/edit_question_list_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/question_list_edit/edit_question_widget.dart';
import 'package:daymemory/widget/question_list_edit/question_list_edit_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class EditQuestionListConnector extends PageConnector<QuestionListEditViewModel, EditQuestionListConverter> {
  const EditQuestionListConnector({Key? key}) : super(key: key);

  @override
  void onDispose(BuildContext context, AppState state, Function dispatch) {
    dispatch(ResetQuestionListStateAction());
  }

  @override
  Widget buildWidget(BuildContext context, QuestionListEditViewModel viewModel) => EditQuestionWidget(viewModel: viewModel);

  @override
  EditQuestionListConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final questionListState = state.questionListState;

    final converter = EditQuestionListConverter(
        dispatch: dispatch,
        locale: AppLocalizations.of(context)!,
        questionListId: questionListState.questionListId,
        questions: questionListState.questions,
        text: state.questionListState.text,
        isSaving: state.questionListState.isSaving);
    return converter;
  }
}
