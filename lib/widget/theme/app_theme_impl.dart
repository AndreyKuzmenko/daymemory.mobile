import 'package:daymemory/extensions/hex_color_extension.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppTheme implements IAppTheme {
  late Color _accentTextColor;
  late Color _secondaryTextColor;
  late Color _colorAccent;
  late Color _itemSeparatorColor;
  late Color _bodyBackgroundColor;

  AppTheme() {
    _colorAccent = HexColor.fromHex("#2196F3");
    _bodyBackgroundColor = HexColor.fromHex("#ffffff");
    _itemSeparatorColor = HexColor.fromHex("#EEEEEE");
    _accentTextColor = HexColor.fromHex("#111111");
    _secondaryTextColor = HexColor.fromHex("#646464");
  }

  @override
  Color get colorAccent => _colorAccent;

  @override
  Color get accentTextColor => _accentTextColor;

  @override
  Color get secondaryTextColor => _secondaryTextColor;

  @override
  Color get itemSeparatorColor => _itemSeparatorColor;

  @override
  Color get bodyBackgroundColor => _bodyBackgroundColor;

  @override
  Color get black => const Color(0xFF171100);

  @override
  Color get red => Colors.red;

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get blueGradientEnd => HexColor.fromHex("004A97");

  @override
  Color get blueGradientStart => _colorAccent;

  @override
  TextStyle get navigationTitle => TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: black,
      );

  @override
  TextStyle get settingsLabel => TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: black,
      );

  @override
  TextStyle get settingsActiveLabel => TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: colorAccent,
      );

  @override
  TextStyle get settingsValueLabel => TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w300,
        color: black,
      );

  @override
  TextStyle get settingsValueActiveLabel => TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: colorAccent,
      );

  @override
  TextStyle get semiBold16 => TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: accentTextColor,
      );

  @override
  TextStyle get medium16 => TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: accentTextColor,
      );

  @override
  TextStyle get bold16 => TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        color: accentTextColor,
      );

  @override
  TextStyle get semiBold17 => TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w600,
        color: accentTextColor,
      );

  @override
  TextStyle get semiBold24 => semiBold16.copyWith(fontSize: 24.0);

  @override
  TextStyle get semiBold28 => semiBold16.copyWith(fontSize: 28.0);

  @override
  TextStyle get regular16 => TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: secondaryTextColor,
      );

  @override
  TextStyle get regular17 => TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: secondaryTextColor,
      );

  @override
  TextStyle get regular14 => TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: secondaryTextColor,
      );

  @override
  TextStyle get medium12 => TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: colorAccent,
      );

  @override
  TextStyle get medium17 => TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w500,
        color: colorAccent,
      );

  @override
  TextStyle get regular12 => TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: colorAccent,
      );

  @override
  TextStyle get semiBold12 => TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
        color: accentTextColor,
      );

  @override
  TextStyle get semiBold14 => TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
        color: accentTextColor,
      );

  @override
  TextStyle get medium14 => TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: accentTextColor,
      );

  @override
  TextStyle get semiBold22 => const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );
}
