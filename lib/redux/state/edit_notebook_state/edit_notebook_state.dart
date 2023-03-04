import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';

part 'edit_notebook_state.g.dart';

abstract class EditNotebookState implements Built<EditNotebookState, EditNotebookStateBuilder> {
  String? get notebookId;

  String? get title;

  bool get showInReview;

  int get orderRank;

  SortingType get sortingType;

  bool get isSaving;

  EditNotebookState._();

  factory EditNotebookState([void Function(EditNotebookStateBuilder) updates]) = _$EditNotebookState;

  factory EditNotebookState.initial() => EditNotebookState((b) => b
    ..notebookId = null
    ..title = ""
    ..showInReview = false
    ..orderRank = 0
    ..sortingType = SortingType.byCreatedDate
    ..isSaving = false);
}
