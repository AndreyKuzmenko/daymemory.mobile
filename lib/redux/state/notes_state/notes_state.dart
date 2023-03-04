import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';

part 'notes_state.g.dart';

abstract class NotesState implements Built<NotesState, NotesStateBuilder> {
  bool get isLoading;

  bool get hasLoadedAll;

  bool get isLoadingMore;

  int? get lastItemDateTime;

  SortingType get sortingType;

  List<NoteDto> get notes;

  String? get notebookId;

  String? get tag;

  NotesState._();

  factory NotesState([void Function(NotesStateBuilder) updates]) = _$NotesState;

  factory NotesState.initial() => NotesState((b) => b
    ..tag = null
    ..notebookId = null
    ..hasLoadedAll = false
    ..isLoading = false
    ..isLoadingMore = false
    ..notes = []
    ..sortingType = SortingType.byCreatedDate
    ..lastItemDateTime = null);
}
