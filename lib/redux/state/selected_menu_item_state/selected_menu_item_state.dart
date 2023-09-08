import 'package:built_value/built_value.dart';

part 'selected_menu_item_state.g.dart';

abstract class SelectedMenuItemState implements Built<SelectedMenuItemState, SelectedMenuItemStateBuilder> {
  String? get itemId;

  String? get title;

  SelectedMenuItemState._();

  factory SelectedMenuItemState([void Function(SelectedMenuItemStateBuilder) updates]) = _$SelectedMenuItemState;

  factory SelectedMenuItemState.initial() => SelectedMenuItemState((b) => b
    ..itemId = null
    ..title = null);
}
