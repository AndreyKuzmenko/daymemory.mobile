import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'note_view_model.dart';

part 'notes_view_model.g.dart';

abstract class NotesViewModel implements Built<NotesViewModel, NotesViewModelBuilder> {
  bool get isLoading;

  bool get isLoadingMore;

  bool get isAllItemsLoaded;

  bool get showDrawerMenu;

  FunctionHolder? get updatedDataCommand;

  bool get isScrollToTopEnabled;

  String get title;

  String get loadingTitle;

  String? get notebookId;

  BuiltList<NoteViewModel> get noteList;

  String get noNotes;

  FunctionHolder get loadMoreCommand;

  FunctionHolder get refreshCommand;

  FunctionHolder? get newNoteCommand;

  FunctionHolder? get editNotebookCommand;

  FunctionHolder? get backCommand;

  NotesViewModel._();

  factory NotesViewModel([void Function(NotesViewModelBuilder)? updates]) = _$NotesViewModel;
}
