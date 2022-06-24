import 'package:flutter/material.dart';

import '../theme_extension.dart';

final darkThemeData = ThemeData().copyWith(
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.white54,
      fontSize: 17,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: TextStyle(
      color: Colors.white38,
      fontWeight: FontWeight.w500,
    ),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF47494b),
  ),
  extensions: <ThemeExtension<AppThemeExtension>>[
    AppThemeExtension(
      darkShadowColor: Colors.grey[850]!,
      lightShadowColor: Colors.grey.shade700,
      lightSmallShadowColor: const Color.fromARGB(255, 86, 86, 86),
      imageBorderColor: const Color.fromARGB(255, 37, 37, 37),
      buttonSelectedColor: const Color(0XFFca5421),
    ),
  ],
  useMaterial3: true,
);
