import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';

part 'selected_notebook_state.g.dart';

abstract class SelectedNotebookState implements Built<SelectedNotebookState, SelectedNotebookStateBuilder> {
  String? get notebookId;

  String? get notebookTitle;

  int get orderRank;

  bool get showInReview;

  SortingType get sortingType;

  SelectedNotebookState._();

  factory SelectedNotebookState([void Function(SelectedNotebookStateBuilder) updates]) = _$SelectedNotebookState;

  factory SelectedNotebookState.initial() => SelectedNotebookState((b) => b
    ..notebookId = null
    ..orderRank = 0
    ..showInReview = false
    ..sortingType = SortingType.byCreatedDate
    ..notebookTitle = "");
}
