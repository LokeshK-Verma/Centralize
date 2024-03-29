import 'package:flutter/material.dart';
class Constants{

  static String appName = "Centralize";
  


  //Colors for theme
  static Color lightPrimary = Color.fromRGBO(99, 103, 255, 1);
  static Color darkPrimary = Color(0xff313131);
  static Color lightAccent = Color.fromRGBO(99, 103, 255, 1);
  static Color darkAccent = Color.fromRGBO(99, 103, 255, 1);
  static Color lightBG = Colors.white;
  static Color darkBG = Color(0xff313131);
  static Color badgeColor = Colors.red;

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor:  lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}