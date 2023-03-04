import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'tabs_view_model.g.dart';

abstract class TabsViewModel implements Built<TabsViewModel, TabsViewModelBuilder> {
  TypedFunctionHolder<int> get tabSelectCommand;

  int get selectedTabIndex;

  String get tabTimeline;

  String get tabQuestions;

  bool get isActiveTabClicked;

  TabsViewModel._();

  factory TabsViewModel([void Function(TabsViewModelBuilder) updates]) = _$TabsViewModel;
}
