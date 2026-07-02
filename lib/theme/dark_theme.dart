import 'package:flutter/material.dart';

import 'custom_theme_colors.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'SFProText',
  primaryColor: const Color(0xFF00B14F),
  brightness: Brightness.dark,
  cardColor: const Color(0xFF242424),
  hintColor: const Color(0xFF9F9F9F),
  scaffoldBackgroundColor: const Color(0xFF1C1F1F),
  primaryColorDark: const Color(0xFF008A3F),

    extensions: <ThemeExtension<CustomThemeColors>>[
      CustomThemeColors.dark()
    ],


  colorScheme: const ColorScheme.dark(
      primary: Color(0xFF7BDCB5),
      error: Color(0xFFFF6767),
      secondary: Color(0xFF00B14F),
      tertiary: Color(0xFF7BDCB5),
      tertiaryContainer: Color(0xFFC98B3E),
      secondaryContainer: Color(0xFFEE6464),
      onTertiary: Color(0xFFD9D9D9),
      onSecondary: Color(0xFFFFFFFF),
      onSecondaryContainer: Color(0xFFA8C5C1),
      onTertiaryContainer: Color(0xFF425956),
      outline: Color(0xFF7BDCB5),
      onPrimaryContainer: Color(0xFF929494),
      primaryContainer: Color(0xFFFFA800),
      onSurface: Color(0xFFFFFFFF),
      onPrimary: Color(0xFF00B14F),
      surfaceContainer: Color(0xFF016ACD),
      secondaryFixedDim: Color(0xFF808080)

  ),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: const Color(0xFF00B14F))),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFFFFFFFF)),
      displayMedium: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFFFFFFFF)),
      displaySmall: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFFFFFFFF)),
      bodyLarge: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFFFFFFFF)),
      bodyMedium: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFFFFFFFF)),
      bodySmall: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF7BDCB5)),
    )
);
