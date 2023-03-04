import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';

part 'edit_tags_state.g.dart';

abstract class EditTagsState implements Built<EditTagsState, EditTagsStateBuilder> {
  bool get isLoading;

  bool get isSaving;

  List<TagDto> get tags;

  EditTagsState._();

  factory EditTagsState([void Function(EditTagsStateBuilder) updates]) = _$EditTagsState;

  factory EditTagsState.initial() => EditTagsState(
        (b) => b
          ..tags = []
          ..isLoading = false
          ..isSaving = false,
      );
}
