import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme(String selectedFont) {
    return ThemeData(
      useMaterial3: true,
      brightness: lightScheme().brightness,
      colorScheme: lightScheme(),
      fontFamily: selectedFont,
      textTheme: const TextTheme().apply(
        bodyColor: lightScheme().onSurface,
        displayColor: lightScheme().onSurface,
      ),
      scaffoldBackgroundColor: lightScheme().background,
      canvasColor: lightScheme().surface,
    );
  }

  static ThemeData darkTheme(String selectedFont) {
    return ThemeData(
      useMaterial3: true,
      brightness: darkScheme().brightness,
      colorScheme: darkScheme(),
      fontFamily: selectedFont,
      textTheme: const TextTheme().apply(
        bodyColor: darkScheme().onSurface,
        displayColor: darkScheme().onSurface,
      ),
      scaffoldBackgroundColor: darkScheme().background,
      canvasColor: darkScheme().surface,
    );
  }

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff39693b),
      surfaceTint: Color(0xff39693b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbaf0b6),
      onPrimaryContainer: Color(0xff002105),
      secondary: Color(0xff735c0c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffe08b),
      onSecondaryContainer: Color(0xff241a00),
      tertiary: Color(0xff904b40),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdad4),
      onTertiaryContainer: Color(0xff3a0905),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff7fbf1),
      onBackground: Color(0xff181d17),
      surface: Color(0xfff7fbf1),
      onSurface: Color(0xff181d17),
      surfaceVariant: Color(0xffdee5d9),
      onSurfaceVariant: Color(0xff424940),
      outline: Color(0xff72796f),
      outlineVariant: Color(0xffc2c9bd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322c),
      onInverseSurface: Color(0xffeef2e9),
      inversePrimary: Color(0xff9fd49c),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9fd49c),
      surfaceTint: Color(0xff9fd49c),
      onPrimary: Color(0xff063911),
      primaryContainer: Color(0xff215025),
      onPrimaryContainer: Color(0xffbaf0b6),
      secondary: Color(0xffe3c46d),
      onSecondary: Color(0xff3d2f00),
      secondaryContainer: Color(0xff584400),
      onSecondaryContainer: Color(0xffffe08b),
      tertiary: Color(0xffffb4a8),
      onTertiary: Color(0xff561e16),
      tertiaryContainer: Color(0xff73342a),
      onTertiaryContainer: Color(0xffffdad4),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff10140f),
      onBackground: Color(0xffe0e4db),
      surface: Color(0xff10140f),
      onSurface: Color(0xffe0e4db),
      surfaceVariant: Color(0xff424940),
      onSurfaceVariant: Color(0xffc2c9bd),
      outline: Color(0xff8c9388),
      outlineVariant: Color(0xff424940),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4db),
      onInverseSurface: Color(0xff2d322c),
      inversePrimary: Color(0xff39693b),
    );
  }
}
