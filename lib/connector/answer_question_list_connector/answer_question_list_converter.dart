import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/answer_question_action.dart';
import 'package:daymemory/redux/action/system_action.dart';
import 'package:daymemory/widget/answer_question_list/answer_question_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/note/editnote_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AnswerQuestionListConverter extends ViewModelConverter<AnswerQuestionViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final bool isSaving;

  final String title;

  final String text;

  final String questionText;

  final LocationDto? location;

  final bool isLastQuestion;

  final List<TagDto> tags;

  AnswerQuestionListConverter({
    required this.dispatch,
    required this.locale,
    required this.isSaving,
    required this.title,
    required this.text,
    required this.isLastQuestion,
    required this.questionText,
    required this.location,
    required this.tags,
  });

  @override
  AnswerQuestionViewModel build() {
    return AnswerQuestionViewModel((b) => b
      ..isSaving = isSaving
      ..title = title
      ..editViewModel = EditNoteViewModel((e) => e
        ..location = location
        ..tags = tags
        ..text = text
        ..textPlaceholder = locale.memory_hint_text
        ..isSaving = false
        ..textChangedCommand = TypedFunctionHolder((data) {
          dispatch(ChangeAnswerTextAction(data));
        })
        ..closeCommand = FunctionHolder(() {
          //dispatch(SaveNoteAction());
        })
        ..questionText = questionText
        ..saveCommand = FunctionHolder(() {
          //dispatch(SaveNoteAction());
        })).toBuilder()
      ..nextCommand = FunctionHolder(() {
        if (isLastQuestion) {
          dispatch(FinishAnswerQuestionListAction());
        } else {
          dispatch(AnswerQuestionAction());
          dispatch(MakeSystemClickAction());
        }
      })
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }
}
