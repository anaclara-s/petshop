import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomThemeData {
  static ThemeData getThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: kScaffoldBackgroundColor,

      //TextFormField start
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: kTextFormFieldBackgroundColor,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: kButonsBackgroundColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: kButonsBackgroundColor,
          ),
        ),
        labelStyle: const TextStyle(
          color: kTextLigntColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      //TextFormField end

      //ElevatedButton start
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          textStyle: const TextStyle(
            color: kTextLigntColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: kButonsBackgroundColor,
        ),
      ),
      //ElevatedButton end

      //FloatingActionButton start
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kButonsBackgroundColor,
        iconSize: 30,
      ),
      //FloatingActionButton end
    );
  }
}
