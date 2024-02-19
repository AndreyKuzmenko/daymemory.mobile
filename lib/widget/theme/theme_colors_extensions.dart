import 'package:flutter/material.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.accentColor,
    required this.textPrimaryColor,
    required this.textSecondaryColor,
    required this.buttonTextColor,
    required this.errorColor,
    required this.backgroundPrimaryColor,
    required this.backgroundSecondaryColor,
    required this.cardColor,
  });
  final Color? accentColor;
  final Color? textPrimaryColor;
  final Color? textSecondaryColor;
  final Color? buttonTextColor;
  final Color? errorColor;
  final Color? backgroundPrimaryColor;
  final Color? backgroundSecondaryColor;
  final Color? cardColor;

  @override
  ThemeColors copyWith({
    Color? accentColor,
    Color? textPrimaryColor,
    Color? textSecondaryColor,
    Color? buttonTextColor,
    Color? errorColor,
    Color? backgroundPrimaryColor,
    Color? backgroundSecondaryColor,
    Color? cardColor,
  }) {
    return ThemeColors(
      accentColor: accentColor ?? this.accentColor,
      textPrimaryColor: textPrimaryColor ?? this.textPrimaryColor,
      textSecondaryColor: textSecondaryColor ?? this.textSecondaryColor,
      buttonTextColor: buttonTextColor ?? this.buttonTextColor,
      errorColor: errorColor ?? this.errorColor,
      backgroundPrimaryColor: backgroundPrimaryColor ?? this.backgroundPrimaryColor,
      backgroundSecondaryColor: backgroundSecondaryColor ?? this.backgroundSecondaryColor,
      cardColor: cardColor ?? this.cardColor,
    );
  }

  @override
  ThemeColors lerp(ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      accentColor: Color.lerp(accentColor, other.accentColor, t),
      textPrimaryColor: Color.lerp(textPrimaryColor, other.textPrimaryColor, t),
      textSecondaryColor: Color.lerp(textSecondaryColor, other.textSecondaryColor, t),
      buttonTextColor: Color.lerp(buttonTextColor, other.buttonTextColor, t),
      errorColor: Color.lerp(errorColor, other.errorColor, t),
      backgroundPrimaryColor: Color.lerp(backgroundPrimaryColor, other.backgroundPrimaryColor, t),
      backgroundSecondaryColor: Color.lerp(backgroundSecondaryColor, other.backgroundSecondaryColor, t),
      cardColor: Color.lerp(cardColor, other.cardColor, t),
    );
  }
}
