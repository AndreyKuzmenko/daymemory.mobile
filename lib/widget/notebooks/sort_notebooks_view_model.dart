import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'sort_notebooks_view_model.g.dart';

abstract class SortNotebooksViewModel implements Built<SortNotebooksViewModel, SortNotebooksViewModelBuilder> {
  String get title;

  String get loadingTitle;

  List<NotebookDto> get notebooks;

  String get noNotebooks;

  bool get showDragIcon;

  FunctionHolder? get backCommand;

  TypedFunctionHolder<ItemPositionDto> get reorderCommand;

  SortNotebooksViewModel._();

  factory SortNotebooksViewModel([void Function(SortNotebooksViewModelBuilder)? updates]) = _$SortNotebooksViewModel;
}
