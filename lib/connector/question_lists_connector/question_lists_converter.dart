import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/data/dtos/question_list_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/question-lists/question_list_view_model.dart';
import 'package:daymemory/widget/question-lists/question_lists_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuestionListsConverter extends ViewModelConverter<QuestionListsViewModel> {
  final AppLocalizations loc;
  final Locale locale;
  final Function(dynamic) dispatch;
  final bool isLoading;
  final List<QuestionListDto> questionLists;

  QuestionListsConverter({
    required this.locale,
    required this.loc,
    required this.dispatch,
    required this.isLoading,
    required this.questionLists,
  });

  @override
  QuestionListsViewModel build() {
    return QuestionListsViewModel((b) => b
      ..isLoading = isLoading
      ..title = loc.question_lists_page_title
      ..loadingTitle = loc.loading
      ..noQuestionLists = "No question lists"
      ..questionLists = _convertQuestionLists()?.toBuilder()
      ..reorderCommand = TypedFunctionHolder<ItemPositionDto>(
        (data) {
          dispatch(ReorderQuestionListsAction(data.current, data.start));
        },
      )
      ..newQuestionListCommand = FunctionHolder(() => dispatch((NavigateToNewQuestionListAction())))
      ..refreshCommand = FunctionHolder(() => dispatch((QuestionListsRefreshAction()))));
  }

  BuiltList<QuestionListViewModel>? _convertQuestionLists() {
    if (questionLists.isEmpty) {
      return null;
    }
    return questionLists
        .map(
          (item) => QuestionListViewModel((b) => b
            ..questionListId = item.id
            ..text = item.text
            ..menuCancel = loc.menu_cancel
            ..menuDelete = loc.menu_delete
            ..menuEdit = loc.menu_edit
            ..questions = item.questions.map((e) => e.text).toList()
            ..orderRank = item.orderRank
            ..answerQuestionListCommand = FunctionHolder(
              () => dispatch(
                NavigateToAnswerQuestionListAction(questionListTitle: item.text, questions: item.questions.map((e) => e.text).toList()),
              ),
            )
            ..deleteQuestionListCommand = FunctionHolder(
              () => dispatch(
                DeleteQuestionListAction(questionListId: item.id),
              ),
            )
            ..editQuestionListCommand = FunctionHolder(
              () => dispatch(
                NavigateToEditQuestionListAction(
                  questionListId: item.id,
                  text: item.text,
                  questions: item.questions,
                  orderRank: item.orderRank,
                ),
              ),
            )),
        )
        .toList()
        .toBuiltList();
  }
}
