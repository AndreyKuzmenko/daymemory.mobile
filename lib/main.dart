import 'dart:io';

import 'package:daymemory/common/custom_http_overrides.dart';
import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/connector/root/root_connector.dart';
import 'package:daymemory/firebase_options.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/store/store_service.dart';
import 'package:daymemory/widget/common/locale_notifier.dart';
import 'package:daymemory/widget/common/splash/splash_widget.dart';
import 'package:daymemory/widget/theme/app_theme_impl.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void runAppWithConfiguration(ConfigurationSettings settings) async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = CustomHttpOverrides();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  var settingsService = await SettingsService().init();
  var deviceInfoService = await DeviceInfoService().init();
  var s = await settingsService.getSettings();
  var language = s.language ?? deviceInfoService.localeName;

  final getIt = GetIt.I;
  var serviceLocator = ServiceLocator(
    settings: settings,
    deviceType: deviceInfoService.deviceType,
    dependencyResolver: MobileTabletPlatformDependencyResolver(getIt: getIt),
  );
  serviceLocator.initDependencies();

  //initDependencies(settings, deviceInfoService.deviceType);

  runApp(DayMemoryApp(
    settings: settings,
    language: language,
    deviceType: deviceInfoService.deviceType,
  ));
}

class DayMemoryApp extends StatelessWidget {
  final ConfigurationSettings settings;
  final String language;
  final DeviceType deviceType;

  const DayMemoryApp({Key? key, required this.settings, required this.language, required this.deviceType}) : super(key: key);

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
                        child: RootConnector(deviceType: deviceType),
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
