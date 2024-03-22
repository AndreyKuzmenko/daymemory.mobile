import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/tags_edit_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/tags/tag_field_view_model.dart';
import 'package:daymemory/widget/tags/tags_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditTagsConverter extends ViewModelConverter<TagsViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final bool isSaving;

  final List<TagDto> tags;

  EditTagsConverter({required this.locale, required this.isSaving, required this.dispatch, required this.tags});

  @override
  TagsViewModel build() {
    return TagsViewModel((b) => b
      ..isSaving = isSaving
      ..title = locale.edit_tags_title
      ..items = _convertItems().toBuilder()
      ..addTagCommand = FunctionHolder(() {
        dispatch(AddTagAction());
      })
      ..addTagButton = locale.edit_tags_add_tag
      ..saveCommand = FunctionHolder(() {
        dispatch(SaveTagsAction());
      })
      ..reorderCommand = TypedFunctionHolder<ItemPositionDto>(
        (data) {
          dispatch(ReorderTagsAction(data.current, data.start));
        },
      )
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }

  BuiltList<TagFieldViewModel> _convertItems() {
    if (tags.isEmpty) {
      return <TagFieldViewModel>[].toBuiltList();
    }
    return tags
        .map((item) => TagFieldViewModel((b) => b
          ..text = item.text
          ..fieldId = item.id
          ..deleteCommand = FunctionHolder(() {
            dispatch(RemoveTagAction(tagId: item.id));
          })
          ..placeholder = locale.edit_tags_placeholder
          ..textChangedCommand = TypedFunctionHolder<String>((data) {
            dispatch(ChangeTagAction(tagId: item.id, text: data));
          })))
        .toList()
        .toBuiltList();
  }
}
