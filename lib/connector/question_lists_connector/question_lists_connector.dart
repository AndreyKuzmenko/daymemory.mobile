import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/question_lists_connector/question_lists_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/question-lists/question_lists_view_model.dart';
import 'package:daymemory/widget/question-lists/question_lists_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../redux/action/question_lists_action.dart';

class QuestionListsConnector extends PageConnector<QuestionListsViewModel, QuestionListsConverter> {
  const QuestionListsConnector({super.key});

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(QuestionListsFetchAction());
  }

  @override
  Widget buildWidget(BuildContext context, QuestionListsViewModel viewModel) => QuestionListsWidget(viewModel: viewModel);

  @override
  QuestionListsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    Locale locale = Localizations.localeOf(context);
    //final theme = AppThemeWidget.getTheme(context);
    final converter = QuestionListsConverter(
      loc: AppLocalizations.of(context)!,
      locale: locale,
      dispatch: dispatch,
      isLoading: state.questionListsState.isLoading,
      questionLists: state.questionListsState.questionLists,
    );
    return converter;
  }
}
