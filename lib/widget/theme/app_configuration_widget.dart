import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/navigation/interface_navigation_service.dart';
import 'package:flutter/material.dart';

class AppConfigurationWidget extends InheritedWidget {
  final IDeviceInfoService deviceInfoService;
  final INavigationService navigationService;
  final ConfigurationSettings configurationSettings;

  const AppConfigurationWidget({
    required this.deviceInfoService,
    required this.configurationSettings,
    required this.navigationService,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(AppConfigurationWidget oldWidget) => false;

  static IDeviceInfoService getDeviceInfo(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppConfigurationWidget>()!.deviceInfoService;

  static INavigationService getNavigationService(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppConfigurationWidget>()!.navigationService;

  static ConfigurationSettings getConfigurationSettings(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppConfigurationWidget>()!.configurationSettings;
}
