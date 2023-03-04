import 'package:built_value/built_value.dart';

part 'tabs_state.g.dart';

abstract class TabsState implements Built<TabsState, TabsStateBuilder> {
  int get selectTabIndex;

  bool get isActiveTabClicked;

  TabsState._();

  factory TabsState([void Function(TabsStateBuilder) updates]) = _$TabsState;

  factory TabsState.initial() => TabsState((b) => b
    ..selectTabIndex = 0
    ..isActiveTabClicked = false);
}
