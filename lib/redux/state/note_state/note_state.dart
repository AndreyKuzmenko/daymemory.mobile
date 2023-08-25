import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';

part 'note_state.g.dart';

abstract class NoteState implements Built<NoteState, NoteStateBuilder> {
  String? get noteId;

  String? get notebookId;

  String? get text;

  LocationDto? get location;

  BuiltList<FileDto> get mediaFiles;

  bool get isImageDateUsed;

  bool get hasChanged;

  bool get isSaving;

  DateTime get date;

  NoteState._();

  factory NoteState([void Function(NoteStateBuilder) updates]) = _$NoteState;

  factory NoteState.initial() => NoteState((b) => b
    ..noteId = null
    ..notebookId = null
    ..text = ""
    ..hasChanged = false
    ..date = DateTime.now().toUtc()
    ..isSaving = false
    ..isImageDateUsed = false
    ..mediaFiles = ListBuilder()
    ..location = null);
}
