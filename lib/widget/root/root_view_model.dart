import 'dart:ui';

import 'package:built_value/built_value.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/root/dialog/dialog_view_model.dart';

part 'root_view_model.g.dart';

abstract class RootViewModel implements Built<RootViewModel, RootViewModelBuilder> {
  FunctionHolder get initialized;

  FunctionHolder get resumed;

  FunctionHolder get paused;

  TypedFunctionHolder<Size> get sizeChanged;

  AsyncFunctionHolder<bool> get willPopCommand;

  bool get isPasscodeEnabled;

  bool get showSideMenu;

  Size get size;

  RouteType get routeType;

  double get fullscreenMinWidth;

  double get sideMenuWidth;

  bool get isSideMenuSupported;

  bool get isAppActive;

  DialogViewModel? get dialog;

  FunctionHolder get dialogDismiss;

  RootViewModel._();

  factory RootViewModel([void Function(RootViewModelBuilder) updates]) = _$RootViewModel;
}
