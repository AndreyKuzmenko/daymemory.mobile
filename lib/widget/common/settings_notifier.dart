import 'package:daymemory/widget/theme/theme_color_options.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class SettingsNotifier extends ChangeNotifier {
  final String languageCode;
  late Locale _locale;
  late ThemeMode themeMode;
  late ThemeColorOptions lightThemeColors;
  late ThemeColorOptions darkThemeColors;

  SettingsNotifier(this.languageCode, this.themeMode, this.lightThemeColors, this.darkThemeColors) {
    _locale = Locale(languageCode);
  }

  Locale get locale => _locale;

  void setLocale(Locale locale) async {
    _locale = locale;
    await Jiffy.setLocale(locale.languageCode);
    notifyListeners();
  }

  void setTheme(ThemeMode themeMode) async {
    this.themeMode = themeMode;
    notifyListeners();
  }

  void updateColorScheme(ThemeColorOptions lightThemeColors, ThemeColorOptions darkThemeColors) async {
    this.lightThemeColors = lightThemeColors;
    this.darkThemeColors = darkThemeColors;
    notifyListeners();
  }
}
