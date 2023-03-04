import 'package:flutter/widgets.dart';

class LocaleNotifier extends ChangeNotifier {
  final String languageCode;
  late Locale _locale;

  LocaleNotifier(this.languageCode) {
    _locale = Locale(languageCode);
  }

  Locale get locale => _locale;

  void setLocale(Locale locale) async {
    _locale = locale;
    notifyListeners();
  }
}
