import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppThemeWidget extends InheritedWidget {
  final IAppTheme appTheme;
  final IDeviceInfoService deviceInfoService;
  final ConfigurationSettings configurationSettings;

  const AppThemeWidget({
    required this.appTheme,
    required this.deviceInfoService,
    required this.configurationSettings,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(AppThemeWidget oldWidget) => appTheme == oldWidget.appTheme;

  static IAppTheme getTheme(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppThemeWidget>()!.appTheme;

  static IDeviceInfoService getDeviceInfo(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppThemeWidget>()!.deviceInfoService;

  static ConfigurationSettings getConfigurationSettings(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppThemeWidget>()!.configurationSettings;
}
