import 'package:daymemory/connector/answer_question_list_connector/answer_question_list_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/answer_question_list/answer_question_list_widget.dart';
import 'package:daymemory/widget/answer_question_list/answer_question_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class AnswerQuestionListConnector extends PageConnector<AnswerQuestionViewModel, AnswerQuestionListConverter> {
  const AnswerQuestionListConnector({super.key});

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(NoteLoadLocationAction());
  }

  @override
  Widget buildWidget(BuildContext context, AnswerQuestionViewModel viewModel) => AnswerQuestionListWidget(viewModel: viewModel);

  @override
  AnswerQuestionListConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = AnswerQuestionListConverter(
        dispatch: dispatch,
        title: state.answerQuestionState.questionListTitle,
        locale: AppLocalizations.of(context)!,
        tags: state.tagsState.tags,
        isLastQuestion: state.answerQuestionState.questions.length == state.answerQuestionState.currentIndex + 1,
        text: state.answerQuestionState.answers[state.answerQuestionState.currentIndex].text,
        questionText: state.answerQuestionState.questions[state.answerQuestionState.currentIndex],
        isSaving: state.noteState.isSaving,
        location: state.noteState.location);
    return converter;
  }
}
