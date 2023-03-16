import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'side_menu_view_model.g.dart';

abstract class SideMenuViewModel implements Built<SideMenuViewModel, SideMenuViewModelBuilder> {
  TypedFunctionHolder<NotebookDto> get selectNotebookCommand;

  FunctionHolder get newNotebookCommand;

  String? get selectedNotebookId;

  List<NotebookDto> get notebooks;

  bool get isDesktop;

  bool get hasError;

  String get settingsMenuOption;

  String get newNotebookMenuOption;

  String get reviewMemoriesMenuOption;

  String get notebooksMenuOption;

  FunctionHolder get settingsMenuCommand;

  FunctionHolder get reviewMemoriesCommand;

  FunctionHolder get sortNotebooksCommand;

  SideMenuViewModel._();

  factory SideMenuViewModel([void Function(SideMenuViewModelBuilder)? updates]) = _$SideMenuViewModel;
}
