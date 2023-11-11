import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'editnote_view_model.g.dart';

class NoteEditData {
  final String text;

  final List<FileDto> images;

  final LocationDto? currentLocation;

  NoteEditData({required this.text, required this.images, required this.currentLocation});
}

abstract class EditNoteViewModel implements Built<EditNoteViewModel, EditNoteViewModelBuilder> {
  String? get noteId;

  String? get text;

  String get notebookTitle;

  String get notebookId;

  String? get questionText;

  String get textPlaceholder;

  String get doneButtonText;

  bool get isSaving;

  bool get hasChanged;

  LocationDto? get location;

  BuiltList<FileViewModel> get mediaFiles;

  List<TagDto> get tags;

  DateTime get date;

  bool get showToolbarOnTop;

  bool get isVideoSupported;

  FunctionHolder get saveCommand;

  TypedFunctionHolder<ItemPositionDto> get reorderCommand;

  FunctionHolder get optionsCommand;

  FunctionHolder get closeCommand;

  TypedFunctionHolder<String>? get deleteImageCommand;

  FunctionHolder? get selectImagesCommand;

  FunctionHolder? get selectVideoCommand;

  FunctionHolder get selectNotebookCommand;

  TypedFunctionHolder<String> get textChangedCommand;

  TypedFunctionHolder<DateTime> get dateChangedCommand;

  EditNoteViewModel._();

  factory EditNoteViewModel([void Function(EditNoteViewModelBuilder) updates]) = _$EditNoteViewModel;
}
