import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/data/dtos/question_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/question_list_edit/question_field_view_model.dart';
import 'package:daymemory/widget/question_list_edit/question_list_edit_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditQuestionListConverter extends ViewModelConverter<QuestionListEditViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final String? questionListId;

  final bool isSaving;

  final String text;

  final List<QuestionDto> questions;

  EditQuestionListConverter({required this.dispatch, required this.locale, required this.questionListId, required this.isSaving, required this.text, required this.questions});

  @override
  QuestionListEditViewModel build() {
    return QuestionListEditViewModel((b) => b
      ..questionListId = questionListId
      ..isSaving = isSaving
      ..questions = _convertQuestions().toBuilder()
      ..questionList = QuestionFieldViewModel((q) => q
        ..text = text
        ..fieldId = questionListId ?? "new_question_list"
        ..placeholder = "Enter title.."
        ..textChangedCommand = TypedFunctionHolder<String>((data) {
          dispatch(QuestionListChangeTextAction(text: data));
        })).toBuilder()
      ..addQuestionCommand = FunctionHolder(() {
        dispatch(CreateQuestionAction());
      })
      ..saveCommand = FunctionHolder(() {
        if (questionListId == null) {
          dispatch(CreateQuestionListAction());
        } else {
          dispatch(SaveQuestionListAction());
        }
      })
      ..reorderCommand = TypedFunctionHolder<ItemPositionDto>(
        (data) {
          dispatch(ReorderQuestionsAction(data.current, data.start));
        },
      )
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }

  BuiltList<QuestionFieldViewModel> _convertQuestions() {
    if (questions.isEmpty) {
      return <QuestionFieldViewModel>[].toBuiltList();
    }
    return questions
        .map((item) => QuestionFieldViewModel((b) => b
          ..text = item.text
          ..fieldId = item.id
          ..deleteCommand = FunctionHolder(() {
            dispatch(DeleteQuestionAction(questionId: item.id));
          })
          ..placeholder = "Enter a question"
          ..textChangedCommand = TypedFunctionHolder<String>((data) {
            dispatch(UpdateQuestionAction(questionId: item.id, text: data));
          })))
        .toList()
        .toBuiltList();
  }
}
