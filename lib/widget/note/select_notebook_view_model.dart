import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'select_notebook_view_model.g.dart';

abstract class SelectNotebookViewModel implements Built<SelectNotebookViewModel, SelectNotebookViewModelBuilder> {
  String? get selectedNotebookId;

  String get newNotebookMenuOption;

  BuiltList<NotebookDto> get notebooks;

  String get title;

  FunctionHolder get closeCommand;

  FunctionHolder get newNotebookCommand;

  TypedFunctionHolder<String> get selectNotebookCommand;

  SelectNotebookViewModel._();

  factory SelectNotebookViewModel([void Function(SelectNotebookViewModelBuilder) updates]) = _$SelectNotebookViewModel;
}
