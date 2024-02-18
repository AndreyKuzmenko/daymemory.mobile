import 'dart:ui';
import 'package:daymemory/extensions/hex_color_extension.dart';

class ThemeColorOptions {
  final Color accentColor;
  final Color textPrimaryColor;
  final Color textSecondaryColor;
  final Color buttonTextColor;
  final Color errorColor;
  final Color backgroundPrimaryColor;
  final Color backgroundSecondaryColor;
  final Color cardColor;
  final Color chipBackgroundColor;
  final Color selectedChipBackgroundColor;
  final Color chipTextColor;
  final Color selectedChipTextColor;

  ThemeColorOptions({
    required this.accentColor,
    required this.textPrimaryColor,
    required this.textSecondaryColor,
    required this.buttonTextColor,
    required this.errorColor,
    required this.backgroundPrimaryColor,
    required this.backgroundSecondaryColor,
    required this.cardColor,
    required this.chipBackgroundColor,
    required this.selectedChipBackgroundColor,
    required this.chipTextColor,
    required this.selectedChipTextColor,
  });

  factory ThemeColorOptions.fromJson(Map<String, dynamic> json) {
    return ThemeColorOptions(
      accentColor: HexColor.fromHex(json["accentColor"]),
      textPrimaryColor: HexColor.fromHex(json["textPrimaryColor"]),
      textSecondaryColor: HexColor.fromHex(json["textSecondaryColor"]),
      buttonTextColor: HexColor.fromHex(json["buttonTextColor"]),
      errorColor: HexColor.fromHex(json["errorColor"]),
      backgroundPrimaryColor: HexColor.fromHex(json["backgroundPrimaryColor"]),
      backgroundSecondaryColor: HexColor.fromHex(json["backgroundSecondaryColor"]),
      cardColor: HexColor.fromHex(json["cardColor"]),
      chipBackgroundColor: HexColor.fromHex(json["chipBackgroundColor"]),
      selectedChipBackgroundColor: HexColor.fromHex(json["selectedChipBackgroundColor"]),
      chipTextColor: HexColor.fromHex(json["chipTextColor"]),
      selectedChipTextColor: HexColor.fromHex(json["selectedChipTextColor"]),
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json["accentColor"] = accentColor.toHex();
    json["textPrimaryColor"] = textPrimaryColor.toHex();
    json["textSecondaryColor"] = textSecondaryColor.toHex();
    json["buttonTextColor"] = buttonTextColor.toHex();
    json["errorColor"] = errorColor.toHex();
    json["backgroundPrimaryColor"] = backgroundPrimaryColor.toHex();
    json["backgroundSecondaryColor"] = backgroundSecondaryColor.toHex();
    json["cardColor"] = cardColor.toHex();
    json["chipBackgroundColor"] = chipBackgroundColor.toHex();
    json["selectedChipBackgroundColor"] = selectedChipBackgroundColor.toHex();
    json["chipTextColor"] = chipTextColor.toHex();
    json["selectedChipTextColor"] = selectedChipTextColor.toHex();
    return json;
  }

  static ThemeColorOptions dark() {
    return ThemeColorOptions(
      accentColor: HexColor.fromHex("#6466E9"),
      textPrimaryColor: HexColor.fromHex("#EDF2F7"),
      textSecondaryColor: HexColor.fromHex("#A0AEC0"),
      buttonTextColor: HexColor.fromHex("#FFFFFF"),
      errorColor: HexColor.fromHex("#E96464"),
      backgroundPrimaryColor: HexColor.fromHex("#262E40"),
      backgroundSecondaryColor: HexColor.fromHex("#0C1017"),
      cardColor: HexColor.fromHex("#111927"),
      chipBackgroundColor: HexColor.fromHex("#404C6A"),
      selectedChipBackgroundColor: HexColor.fromHex("#6F7B98"),
      chipTextColor: HexColor.fromHex("#FFFFFF"),
      selectedChipTextColor: HexColor.fromHex("#FFFFFF"),
    );
  }

  static ThemeColorOptions light() {
    return ThemeColorOptions(
      accentColor: HexColor.fromHex("#6466E9"),
      textPrimaryColor: HexColor.fromHex("#111927"),
      textSecondaryColor: HexColor.fromHex("#6C737F"),
      buttonTextColor: HexColor.fromHex("#FFFFFF"),
      errorColor: HexColor.fromHex("#E96464"),
      backgroundPrimaryColor: HexColor.fromHex("#F5F6F7"),
      backgroundSecondaryColor: HexColor.fromHex("#E0E8EF"),
      cardColor: HexColor.fromHex("#FFFFFF"),
      chipBackgroundColor: HexColor.fromHex("#BDCDDB"),
      selectedChipBackgroundColor: HexColor.fromHex("#869EB4"),
      chipTextColor: HexColor.fromHex("#111927"),
      selectedChipTextColor: HexColor.fromHex("#FFFFFF"),
    );
  }

  // static ThemeColorOptions dark() {
  //   return ThemeColorOptions(
  //     accentColor: HexColor.fromHex("#F9D500"),
  //     textPrimaryColor: HexColor.fromHex("#DFEBEC"),
  //     textSecondaryColor: HexColor.fromHex("#76A8B4"),
  //     buttonTextColor: HexColor.fromHex("#053941"),
  //     errorColor: HexColor.fromHex("#E96464"),
  //     backgroundPrimaryColor: HexColor.fromHex("#306068"),
  //     backgroundSecondaryColor: HexColor.fromHex("#053941"),
  //     cardColor: HexColor.fromHex("#1A5058"),
  //     chipBackgroundColor: HexColor.fromHex("#376D76"),
  //     selectedChipBackgroundColor: HexColor.fromHex("#76A8B4"),
  //     chipTextColor: HexColor.fromHex("#FFFFFF"),
  //     selectedChipTextColor: HexColor.fromHex("#FFFFFF"),
  //   );
  // }

  // static ThemeColorOptions light() {
  //   return ThemeColorOptions(
  //     accentColor: HexColor.fromHex("#F9D500"),
  //     textPrimaryColor: HexColor.fromHex("#053941"),
  //     textSecondaryColor: HexColor.fromHex("#76A8B4"),
  //     buttonTextColor: HexColor.fromHex("#000000"),
  //     errorColor: HexColor.fromHex("#E96464"),
  //     backgroundPrimaryColor: HexColor.fromHex("#DFEBEC"),
  //     backgroundSecondaryColor: HexColor.fromHex("#BBD6D8"),
  //     cardColor: HexColor.fromHex("#FFFFFF"),
  //     chipBackgroundColor: HexColor.fromHex("#376D76"),
  //     selectedChipBackgroundColor: HexColor.fromHex("#76A8B4"),
  //     chipTextColor: HexColor.fromHex("#111927"),
  //     selectedChipTextColor: HexColor.fromHex("#FFFFFF"),
  //   );
  // }
}
