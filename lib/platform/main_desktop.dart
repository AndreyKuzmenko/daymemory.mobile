import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:daymemory/common/custom_http_overrides.dart';
import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/platform/desktop/connectors/root_connector.dart';
import 'package:daymemory/platform/desktop/services/service_locator.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/store/store_service.dart';
import 'package:daymemory/widget/common/locale_notifier.dart';
import 'package:daymemory/widget/common/splash/splash_widget.dart';
import 'package:daymemory/widget/theme/app_theme_impl.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
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
  var s = await settingsService.getSettings();
  var language = s.language ?? deviceInfoService.localeName;

  final getIt = GetIt.I;
  var serviceLocator = ServiceLocator(
    settings: settings,
    deviceType: deviceInfoService.deviceType,
    dependencyResolver: DesktopPlatformDependencyResolver(getIt: getIt),
  );
  serviceLocator.initDependencies();
  DartVLC.initialize();

  runApp(DesktopApp(
    settings: settings,
    language: language,
    deviceType: deviceInfoService.deviceType,
  ));
}

class DesktopApp extends StatelessWidget {
  const DesktopApp({super.key, required this.settings, required this.language, required this.deviceType});

  final ConfigurationSettings settings;
  final String language;
  final DeviceType deviceType;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LocaleNotifier(language),
        builder: (context, state) {
          final appLocaleProvider = Provider.of<LocaleNotifier>(context);
          return MaterialApp(
            locale: appLocaleProvider.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: EasyLoading.init(),
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              fontFamily: settings.defaultFont,
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: Colors.black),
              ),
            ),
            home: Scaffold(
              body: FutureBuilder(
                future: ServiceLocator.getIt.allReady(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return AppThemeWidget(
                      appTheme: AppTheme(),
                      configurationSettings: settings,
                      deviceInfoService: ServiceLocator.getIt.get(),
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
