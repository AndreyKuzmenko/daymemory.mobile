import 'dart:io';
import 'package:daymemory/services/async_service_initializer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:package_info_plus/package_info_plus.dart';

enum DeviceType { unknown, phone, tablet, desktop }

enum DeviceWidthType { unknown, narrow, wide }

abstract class IDeviceInfoService {
  String get packageName;

  String get screenResolution;

  String get deviceOSVersion;

  String get appVersion;

  String get appVersionName;

  String get deviceUniqueIdentifier;

  String get appName;

  String get localeName;

  bool get isBiometricAvailable;

  DeviceType get deviceType;
}

class DeviceInfoService implements IDeviceInfoService, IAsyncServiceInitializer<IDeviceInfoService> {
  static const unspecified = 'Unspecified';
  late PackageInfo _packageInfo;
  late String _deviceOsVersion;
  late String _deviceUniqueIdentifier;
  late String _screenResolution;
  late bool _isBiometricAvailable = false;

  DeviceInfoService();

  @override
  Future<IDeviceInfoService> init() async {
    _packageInfo = await PackageInfo.fromPlatform();

    try {
      _isBiometricAvailable = await LocalAuthentication().isDeviceSupported();
    } catch (e) {
      _isBiometricAvailable = false;
    }

    return this;
  }

  @override
  String get appVersion => '${_packageInfo.version}(${_packageInfo.buildNumber})';

  @override
  String get localeName {
    var languageCode = "en";
    try {
      languageCode = Platform.localeName.substring(0, 2);
    } on PlatformException {
      languageCode = "en";
    }
    return languageCode;
  }

  @override
  bool get isBiometricAvailable => _isBiometricAvailable;

  @override
  String get appVersionName => _packageInfo.version;

  @override
  String get deviceOSVersion => _deviceOsVersion;

  @override
  String get deviceUniqueIdentifier => _deviceUniqueIdentifier;

  @override
  String get packageName => _packageInfo.packageName;

  @override
  String get screenResolution => _screenResolution;

  @override
  String get appName => _packageInfo.appName;

  @override
  DeviceType get deviceType {
    if (kIsWeb) return DeviceType.desktop;

    if ([
      TargetPlatform.windows,
      TargetPlatform.linux,
      TargetPlatform.macOS,
    ].contains(defaultTargetPlatform)) {
      return DeviceType.desktop;
    }

    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    return data.size.shortestSide > 550 ? DeviceType.tablet : DeviceType.phone;
  }
}
