import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'side_menu_item_view_model.g.dart';

abstract class SideMenuItemViewModel implements Built<SideMenuItemViewModel, SideMenuItemViewModelBuilder> {
  FunctionHolder get selectItemCommand;

  String get id;

  String get title;

  int get notesCount;

  bool get isSelected;

  SideMenuItemViewModel._();

  factory SideMenuItemViewModel([void Function(SideMenuItemViewModelBuilder)? updates]) = _$SideMenuItemViewModel;
}
