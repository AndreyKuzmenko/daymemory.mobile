import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'note_options_view_model.g.dart';

abstract class NoteOptionsViewModel implements Built<NoteOptionsViewModel, NoteOptionsViewModelBuilder> {
  String? get notebookTitle;

  String? get notebookId;

  String get notebookLabel;

  String get tagsLabel;

  String get tagsValue;

  String get dateLabel;

  String get locationLabel;

  String get nolocationText;

  String get title;

  LocationDto? get location;

  BuiltList<NotebookDto> get notebooks;

  List<TagDto> get tags;

  DateTime get date;

  String get formatedDate;

  FunctionHolder get closeCommand;

  TypedFunctionHolder<DateTime> get changeDateCommand;

  FunctionHolder get selectNotebookCommand;

  FunctionHolder get selectTagsCommand;

  NoteOptionsViewModel._();

  factory NoteOptionsViewModel([void Function(NoteOptionsViewModelBuilder) updates]) = _$NoteOptionsViewModel;
}
