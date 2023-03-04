import 'package:built_value/built_value.dart';

part 'side_menu_state.g.dart';

abstract class SideMenuState implements Built<SideMenuState, SideMenuStateBuilder> {
  String? get selectedTag;

  SideMenuState._();

  factory SideMenuState([void Function(SideMenuStateBuilder) updates]) = _$SideMenuState;

  factory SideMenuState.initial() => SideMenuState((b) => b..selectedTag = null);
}
