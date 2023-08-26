import 'package:flutter/material.dart';

class CustomThemeData {
  static ThemeData getThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 251, 235, 228),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color.fromARGB(255, 243, 171, 165),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 230, 94, 93),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 230, 94, 93),
          ),
        ),
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 251, 235, 228),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        hintStyle: TextStyle(
          color: Color.fromARGB(160, 255, 255, 255),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          textStyle: TextStyle(
            color: const Color.fromARGB(255, 251, 235, 228),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Color.fromARGB(255, 230, 94, 93),
        ),
      ),
    );
  }
}
