import 'package:flutter/material.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color? darkShadowColor;
  final Color? lightShadowColor;
  final Color? lightSmallShadowColor;
  final Color? imageBorderColor;
  final Color? buttonSelectedColor;

  AppThemeExtension({
    required this.darkShadowColor,
    required this.lightShadowColor,
    required this.lightSmallShadowColor,
    required this.imageBorderColor,
    required this.buttonSelectedColor,
  });

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    Color? darkShadowColor,
    Color? lightShadowColor,
    Color? lightSmallShadowColor,
    Color? imageBorderColor,
    Color? buttonSelectedColor,
  }) =>
      AppThemeExtension(
        darkShadowColor: darkShadowColor ?? this.darkShadowColor,
        lightShadowColor: lightShadowColor ?? this.lightShadowColor,
        lightSmallShadowColor: lightSmallShadowColor ?? lightSmallShadowColor,
        imageBorderColor: imageBorderColor ?? imageBorderColor,
        buttonSelectedColor: buttonSelectedColor ?? buttonSelectedColor,
      );

  @override
  AppThemeExtension lerp(ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension) {
      return this;
    }

    return AppThemeExtension(
      darkShadowColor: Color.lerp(darkShadowColor, other.darkShadowColor, t),
      lightShadowColor: Color.lerp(lightShadowColor, other.lightShadowColor, t),
      lightSmallShadowColor: Color.lerp(lightSmallShadowColor, other.lightSmallShadowColor, t),
      imageBorderColor: Color.lerp(imageBorderColor, other.imageBorderColor, t),
      buttonSelectedColor: Color.lerp(buttonSelectedColor, other.buttonSelectedColor, t),
    );
  }
}
