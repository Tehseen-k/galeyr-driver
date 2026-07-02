import 'package:flutter/material.dart';
import 'package:ride_sharing_user_app/theme/custom_theme_colors.dart';

ThemeData lightTheme = ThemeData(
    fontFamily: 'SFProText',
    primaryColor: const Color(0xFF00B14F),
    disabledColor: const Color(0xFFBABFC4),
    primaryColorDark: const Color(0xFF008A3F),
    brightness: Brightness.light,
    hintColor: const Color(0xFF9F9F9F),
    cardColor: Colors.white,

    extensions: <ThemeExtension<CustomThemeColors>>[
      CustomThemeColors.light()
  ],


  colorScheme: const ColorScheme.light(
      primary: Color(0xFF7BDCB5),
      surface: Color(0xFFF3F3F3),
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
      onPrimaryContainer: Color(0xFFE8F9F0),
      primaryContainer: Color(0xFFFFA800),
      onErrorContainer: Color(0xFFFFE6AD),
      onPrimary: Color(0xFF00B14F),
      surfaceTint: Color(0xFF00B14F),
      errorContainer: Color(0xFFF6F6F6),
      shadow: Color(0x337BDCB5),
      surfaceContainer: Color(0xFF016ACD),
      secondaryFixedDim: Color(0xFF808080)


  ),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: const Color(0xFF00B14F))),

  textTheme: const TextTheme(
   displayLarge: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF363A45)),
   displayMedium: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF363A45)),
   displaySmall: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF363A45)),
   bodyLarge: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF363A45)),
    bodyMedium: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF363A45)),
    bodySmall: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF363A45)),
  )
);
