import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/root/root_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/widget/root/root_view_model.dart';
import 'package:daymemory/widget/root/root_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class RootConnector extends PageConnector<RootViewModel, RootConverter> {
  final DeviceType deviceType;

  const RootConnector({super.key, required this.deviceType});

  @override
  Widget buildWidget(BuildContext context, RootViewModel viewModel) => RootWidget(viewModel: viewModel);

  @override
  RootConverter prepareConverter(BuildContext context, AppState state, Function dispatch) {
    final config = AppThemeWidget.getConfigurationSettings(context);

    final dialogsState = state.dialogsState;
    return RootConverter(
      isScreenBlocked: state.screenBlockingState.isScreenBlockingActive,
      showSideMenu: state.deviceState.deviceWidthType == DeviceWidthType.wide,
      routeType: deviceType == DeviceType.phone ? RouteType.mobile : RouteType.generic,
      isSideMenuSupported: deviceType == DeviceType.tablet || deviceType == DeviceType.desktop,
      isAppActive: state.screenBlockingState.isAppActive,
      isPasscodeEnabled: state.settingsState.isPasscodeEnabled,
      fullscreenMinWidth: config.fullscreenMinWidth,
      sideMenuWidth: config.sideMenuWidth,
      size: state.deviceState.size,
    )
      ..dispatch = dispatch
      ..dialogs = dialogsState;
  }
}
