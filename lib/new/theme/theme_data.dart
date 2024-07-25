import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  static const lightThemeFont = "nunito",
      darkThemeFont = "nunito";

  // light theme
  static final lightTheme = ThemeData(
    primaryColor: primary,
    brightness: Brightness.light,
    scaffoldBackgroundColor: backgroundLight,
    useMaterial3: true,
    fontFamily: lightThemeFont,
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color>((states) => secondary),
      trackColor:
      WidgetStateProperty.resolveWith<Color>((states) => backgroundDark),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: secondary,
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: iconLight),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: backgroundLight),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundLight,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    // TextFormField decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: textLight),
        errorStyle: TextStyle(color: primary),
      )
    );

  // dark theme
  static final darkTheme = ThemeData(
    primaryColor: primary,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundDark,
    useMaterial3: true,
    fontFamily: darkThemeFont,
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color>((states) => secondary),
      trackColor:
      WidgetStateProperty.resolveWith<Color>((states) => backgroundDark),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: secondary,
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: iconDark),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: iconLight),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundDark,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: textDark),
        errorStyle: TextStyle(color: primary),
      )
  );

  // colors
  static Color
      primary = const Color(0xFF7F0431),
      secondary = const Color(0xFF8C882F),
      textDark = const Color(0xFFF5F5F5),
      textLight = const Color(0xFF1B1E1F),
      textFaded = const Color(0xFF9899A5),
      iconLight = const Color(0xFFD5BEBE),
      iconDark = const Color(0xFF656464),
      backgroundDark = const Color(0xFF1B1E1F),
      backgroundLight = Colors.white;
}