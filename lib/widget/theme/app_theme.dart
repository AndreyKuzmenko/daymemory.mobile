import 'package:flutter/cupertino.dart';

abstract class IAppTheme {
  Color get accentTextColor;
  Color get secondaryTextColor;

  Color get colorAccent;

  Color get bodyBackgroundColor;
  Color get itemSeparatorColor;

  Color get black;
  Color get red;
  Color get white;

  Color get blueGradientStart;
  Color get blueGradientEnd;

  TextStyle get navigationTitle;
  TextStyle get settingsLabel;
  TextStyle get settingsActiveLabel;
  TextStyle get settingsValueLabel;
  TextStyle get settingsValueActiveLabel;

  TextStyle get regular12;
  TextStyle get regular14;
  TextStyle get regular16;
  TextStyle get regular17;

  TextStyle get medium12;
  TextStyle get medium14;
  TextStyle get medium16;
  TextStyle get medium17;

  TextStyle get semiBold12;
  TextStyle get semiBold14;
  TextStyle get semiBold16;
  TextStyle get semiBold17;
  TextStyle get semiBold22;
  TextStyle get semiBold24;
  TextStyle get semiBold28;

  TextStyle get bold16;
}
