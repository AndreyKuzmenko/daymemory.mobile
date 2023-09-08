import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/note/note_options_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class NoteOptionsConverter extends ViewModelConverter<NoteOptionsViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final String language;

  final DateTime date;

  final LocationDto? location;

  final List<NotebookDto> notebooks;

  final List<TagDto> tags;

  final List<String> noteTags;

  final String? notebookTitle;

  final String? notebookdId;

  NoteOptionsConverter({
    required this.dispatch,
    required this.locale,
    required this.date,
    required this.location,
    required this.notebooks,
    required this.language,
    required this.tags,
    required this.noteTags,
    required this.notebookTitle,
    required this.notebookdId,
  });

  @override
  NoteOptionsViewModel build() {
    return NoteOptionsViewModel((b) => b
      ..notebooks = notebooks.toBuiltList().toBuilder()
      ..location = location
      ..notebookId = notebookdId
      ..notebookTitle = notebookTitle
      ..title = locale.note_options_title
      ..tagsLabel = locale.note_options_tags_label
      ..tagsValue = noteTags.isEmpty ? locale.note_options_no_tags_label : noteTags.map((e) => e).join(', ')
      ..tags = tags
      ..date = date
      ..dateLabel = locale.note_options_date_label
      ..locationLabel = locale.note_options_location_label
      ..nolocationText = locale.note_options_no_location_text
      ..notebookLabel = locale.note_options_notebook_label
      ..formatedDate = DateFormat('dd.MM.yyyy', language).format(date.toLocal())
      ..selectNotebookCommand = FunctionHolder(() {
        dispatch(NavigateToSelectNotebookAction());
      })
      ..selectTagsCommand = FunctionHolder(() {
        dispatch(NavigateToSelectTagsAction());
      })
      ..changeDateCommand = TypedFunctionHolder<DateTime>((date) {
        dispatch(NoteDateChangedAction(date: date));
      })
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }
}
