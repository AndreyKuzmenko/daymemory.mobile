import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/note/tags/select_tags_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SelectTagsConverter extends ViewModelConverter<SelectTagsViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final List<TagDto> tags;

  final List<String> selectedTags;

  SelectTagsConverter({
    required this.dispatch,
    required this.locale,
    required this.tags,
    required this.selectedTags,
  });

  @override
  SelectTagsViewModel build() {
    return SelectTagsViewModel((b) => b
      ..tags = tags.toBuiltList().toBuilder()
      ..title = locale.select_tags_title
      ..toogleTagCommand = FunctionHolder(() {
        //dispatch(NoteNotebookChangedAction(notebookId: notebookId));
      })
      ..newTagCommand = FunctionHolder(() {
        //dispatch(NavigateToNewNotebookAction());
      })
      ..newTagMenuOption = locale.new_tag
      ..selectedTags = selectedTags
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }
}
