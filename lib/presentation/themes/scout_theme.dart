import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFD2B48C); // Tan
const Color secondaryColor = Color(0xFF9BC2B1); // Light Green

const TextTheme customTextTheme = TextTheme(
  displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: primaryColor, fontFamily: 'Sans-serif'),
  displayMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: primaryColor, fontFamily: 'Sans-serif'),
  displaySmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: primaryColor, fontFamily: 'Sans-serif'),
  bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black, fontFamily: 'Sans-serif'),
  bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black, fontFamily: 'Sans-serif'),
  labelLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Sans-serif'),
);

ThemeData buildScoutTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    hintColor: secondaryColor,
    scaffoldBackgroundColor: primaryColor,
    fontFamily: 'Sans-serif',
    textTheme: customTextTheme,
    buttonTheme: ButtonThemeData(
      buttonColor: secondaryColor,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
    iconTheme: const IconThemeData(
      color: secondaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: secondaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: secondaryColor),
      ),
    )
  );
}
