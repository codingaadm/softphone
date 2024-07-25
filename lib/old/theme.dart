import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors{
  static const primary = Color(0xFF7F0431);
  static const secondary = Color(0xFF8C882F);
  static const textDark = Color(0xFFF5F5F5);
  static const textLight = Color(0xFF1B1E1F);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFD5BEBE);
  static const iconDark = Color(0xFF656464);
  static const cardLight = Color(0xFF700031);
  static const cardDark = Color(0xFFF5F5F5);
  static const backgroundDark = Color(0xFF1B1E1F);
  static const backgroundLight = Colors.white;
}
abstract class AppFont{
  static GoogleFonts primary = GoogleFonts.nunito() as GoogleFonts;
}
// ref to change theme button
class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
// ref to dark theme
class MyThemes{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF1B1E1F),
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: AppColors.secondary,
      onPrimary: AppColors.backgroundDark,
      surface: AppColors.backgroundDark,),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.adaminaTextTheme().apply(bodyColor: AppColors.textDark),
    appBarTheme: lightTheme.appBarTheme.copyWith(
      iconTheme: lightTheme.iconTheme,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: AppColors.secondary
      ), systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.cardLight),),
    cardColor: AppColors.cardDark,
    primaryTextTheme: const TextTheme(headlineMedium: TextStyle(color: AppColors.textLight)),
    iconTheme: const IconThemeData(color: AppColors.iconDark),

    );


  //ref to light theme
  static final lightTheme = ThemeData(
    snackBarTheme: const SnackBarThemeData(closeIconColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        primary: AppColors.secondary,
        onPrimary: AppColors.secondary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.textFaded,
        surface: AppColors.secondary,),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.adaminaTextTheme().apply(bodyColor: AppColors.textLight),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.cardLight),),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: AppColors.secondary
      ), systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    cardColor: AppColors.cardDark,
    primaryTextTheme: const TextTheme(headlineMedium: TextStyle(color: AppColors.textLight)),
    iconTheme: const IconThemeData(color: AppColors.iconDark),
  );

}

