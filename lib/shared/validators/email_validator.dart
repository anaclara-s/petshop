import 'package:flutter/material.dart';

class EmailValidator {
  static String? emailValidador(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return 'O CAMPO DE EMAIL É OBRIGATORIO';
    }

    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'EMAIL INVALIDO';
    }
    return null;
  }
}
