import 'package:built_value/built_value.dart';
part 'edit_tag_state.g.dart';

abstract class EditTagState implements Built<EditTagState, EditTagStateBuilder> {
  String? get tagId;

  String get title;

  int get orderRank;

  bool get isSaving;

  EditTagState._();

  factory EditTagState([void Function(EditTagStateBuilder) updates]) = _$EditTagState;

  factory EditTagState.initial() => EditTagState((b) => b
    ..tagId = null
    ..title = ""
    ..orderRank = 0
    ..isSaving = false);
}
