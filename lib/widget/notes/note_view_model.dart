import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'note_view_model.g.dart';

abstract class NoteViewModel implements Built<NoteViewModel, NoteViewModelBuilder> {
  String get noteId;

  String get text;

  String get displayDate;

  LocationDto? get location;

  List<FileViewModel> get mediaFiles;

  bool get isFullscreen;

  String get menuEdit;

  String get menuDelete;

  String get menuCancel;

  bool get showContextMenu;

  FunctionHolder get openNoteCommand;

  TypedFunctionHolder<int> get openGalleryCommand;

  TypedFunctionHolder<String> get openTagCommand;

  FunctionHolder get deleteNoteCommand;

  NoteViewModel._();

  factory NoteViewModel([void Function(NoteViewModelBuilder) updates]) = _$NoteViewModel;
}
