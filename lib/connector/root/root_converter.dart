import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/common_action.dart';
import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/redux/state/dialog/dialog_state.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/root/dialog/dialog_view_model.dart';
import 'package:daymemory/widget/root/root_view_model.dart';

class RootConverter extends ViewModelConverter<RootViewModel> {
  late Function dispatch;
  BuiltList<DialogState>? dialogs;
  final bool isScreenBlocked;
  final bool showSideMenu;
  final RouteType routeType;
  final bool isSideMenuSupported;
  final bool isPasscodeEnabled;
  final bool isAppActive;
  final double fullscreenMinWidth;
  final double sideMenuWidth;
  final Size size;

  RootConverter({
    required this.isScreenBlocked,
    required this.showSideMenu,
    required this.routeType,
    required this.isSideMenuSupported,
    required this.fullscreenMinWidth,
    required this.sideMenuWidth,
    required this.isAppActive,
    required this.isPasscodeEnabled,
    required this.size,
  });

  @override
  RootViewModel build() {
    return RootViewModel(
      (b) => b
        ..willPopCommand = AsyncFunctionHolder(_willPopCommand)
        ..initialized = FunctionHolder(() => dispatch(AppInitializedAction()))
        ..showSideMenu = showSideMenu
        ..routeType = routeType
        ..isPasscodeEnabled = isPasscodeEnabled
        ..size = size
        ..isAppActive = isAppActive
        ..fullscreenMinWidth = fullscreenMinWidth
        ..sideMenuWidth = sideMenuWidth
        ..isSideMenuSupported = isSideMenuSupported
        ..sizeChanged = TypedFunctionHolder<Size>((size) {
          dispatch(ChangeScreenSizeAction(size: size));
        })
        ..resumed = FunctionHolder(() => dispatch(AppResumedAction()))
        ..paused = FunctionHolder(() => dispatch(AppPausedAction()))
        ..dialog = _prepareDialogIfPossible()?.toBuilder()
        ..dialogDismiss = FunctionHolder(() => dispatch(InfoDialogDismissedAction())),
    );
  }

  Future<bool> _willPopCommand() async {
    if (isScreenBlocked) {
      return false;
    }

    final action = PopBackStackAction();
    dispatch(action);
    return !await action.result();
  }

  DialogViewModel? _prepareDialogIfPossible() {
    final dialog = dialogs?.isNotEmpty ?? false ? dialogs?.first : null;
    return dialog != null
        ? DialogViewModel(
            (b) => b
              ..positive = dialog.positive
              ..positiveTitle = dialog.positiveTitle
              ..negativeTitle = dialog.negativeTitle
              ..negative = dialog.negative
              ..reverseButtons = dialog.reverseButtons
              ..title = dialog.title
              ..description = dialog.description,
          )
        : null;
  }
}
