import 'dart:io';

import 'package:media_kit/media_kit.dart';
import 'package:daymemory/common/custom_http_overrides.dart';
import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/platform/desktop/connectors/root_connector.dart';
import 'package:daymemory/platform/desktop/services/service_locator.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/store/store_service.dart';
import 'package:daymemory/widget/common/settings_notifier.dart';
import 'package:daymemory/widget/common/splash/splash_widget.dart';
import 'package:daymemory/widget/theme/app_configuration_widget.dart';
import 'package:daymemory/widget/theme/theme_color_options.dart';
import 'package:daymemory/widget/theme/theme_initializer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:system_theme/system_theme.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void runAppWithConfiguration(ConfigurationSettings settings) async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = CustomHttpOverrides();

  if (!kIsWeb &&
      [
        TargetPlatform.windows,
        TargetPlatform.android,
      ].contains(defaultTargetPlatform)) {
    SystemTheme.accentColor.load();
  }

  await flutter_acrylic.Window.initialize();
  await WindowManager.instance.ensureInitialized();
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setTitleBarStyle(
      TitleBarStyle.normal,
      windowButtonVisibility: true,
    );
    await windowManager.setSize(const Size(950, 768));
    await windowManager.setMinimumSize(const Size(500, 600));
    //await windowManager.setMaximumSize(const Size(850, 768));

    await windowManager.center();
    await windowManager.setTitle(settings.appName);
    await windowManager.show();
    //await windowManager.setPreventClose(true);
    await windowManager.setSkipTaskbar(false);
    await windowManager.setResizable(true);
    //await windowManager.setMaximizable(true);
  });

  var settingsService = await SettingsService().init();
  var deviceInfoService = await DeviceInfoService().init();
  var userSettings = await settingsService.getSettings();
  var lightThemeColors = ThemeColorOptions.light(); //await settingsService.getThemeColors(Brightness.light);
  var darkThemeColors = ThemeColorOptions.dark(); //await settingsService.getThemeColors(Brightness.dark);

  if (userSettings.language == null) {
    userSettings.language = deviceInfoService.localeName;
    await settingsService.setSettings(userSettings);
  }
  var language = userSettings.language ?? deviceInfoService.localeName;

  final getIt = GetIt.I;
  var serviceLocator = ServiceLocator(
    settings: settings,
    deviceType: deviceInfoService.deviceType,
    dependencyResolver: DesktopPlatformDependencyResolver(getIt: getIt),
  );
  serviceLocator.initDependencies();
  MediaKit.ensureInitialized();

  runApp(DesktopApp(
    settings: settings,
    language: language,
    deviceType: deviceInfoService.deviceType,
    themeMode: userSettings.themeMode,
    darkThemeColors: darkThemeColors,
    lightThemeColors: lightThemeColors,
  ));
}

class DesktopApp extends StatelessWidget {
  const DesktopApp({
    super.key,
    required this.settings,
    required this.language,
    required this.deviceType,
    required this.themeMode,
    required this.darkThemeColors,
    required this.lightThemeColors,
  });

  final ConfigurationSettings settings;
  final String language;
  final ThemeMode themeMode;
  final DeviceType deviceType;
  final ThemeColorOptions darkThemeColors;
  final ThemeColorOptions lightThemeColors;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingsNotifier(language, themeMode, lightThemeColors, darkThemeColors),
        builder: (context, state) {
          final appSettingsProvider = Provider.of<SettingsNotifier>(context);

          final darkTheme = DefaultThemeInitializer(settings: settings, brightness: Brightness.dark, themeColorOptions: appSettingsProvider.darkThemeColors);
          final lightTheme = DefaultThemeInitializer(settings: settings, brightness: Brightness.light, themeColorOptions: appSettingsProvider.lightThemeColors);
          var routeType = deviceType == DeviceType.phone ? RouteType.mobile : RouteType.generic;

          return MaterialApp(
            locale: appSettingsProvider.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: EasyLoading.init(),
            theme: lightTheme.getTheme(),
            darkTheme: darkTheme.getTheme(),
            themeMode: appSettingsProvider.themeMode,
            home: Scaffold(
              body: FutureBuilder(
                future: ServiceLocator.getIt.allReady(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return AppConfigurationWidget(
                      configurationSettings: settings,
                      deviceInfoService: ServiceLocator.getIt.get(),
                      navigationService: ServiceLocator.getIt.get(instanceName: routeType.toString()),
                      child: StoreProvider<AppState>(
                        store: ServiceLocator.getIt<IStoreService>().store,
                        child: DesktopRootConnector(deviceType: deviceType),
                      ),
                    );
                  } else {
                    return const SplashWidget();
                  }
                },
              ),
            ),
          );
        });
  }
}
