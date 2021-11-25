import 'package:flutter/material.dart';

class AppThemes {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        color: colorScheme.primary,
        elevation: 0,
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary:  Color(0xFFF39A21),
    primaryVariant: Color(0xFFF4D581),
    secondary: Color(0xFF4468b1),
    secondaryVariant: Color(0xFFa0b8e0),
    background: Color(0xFFf6f6fb),
    surface: Color(0xFFf6f6fb),
    onBackground: Colors.white,
    error: Color(0xFFec1f40),
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme =  ColorScheme(
    primary:  Color(0xFFF39A21),
    primaryVariant:  Color(0xFFF4D581),
    secondary: Color(0xFF4468b1),
    secondaryVariant: Color(0xFFa0b8e0),
    background: Color(0xff17191c),
    surface: Color(0xff17191c),
    onBackground: Color(0xff17191c),
    // White with 0.05 opacity
    error: Color(0xFFec1f40),
    onError: Color(0xFFf6f6fb),
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    brightness: Brightness.dark,
  );
}