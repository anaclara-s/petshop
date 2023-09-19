import 'package:flutter/material.dart';

import 'screens/login_and_register/login_register_screen.dart';
import 'shared/themes/theme_data.dart';

void main() {
  runApp(
    MaterialApp(
      home: const LoginRegisterScreen(),
      theme: CustomThemeData.getThemeData(),
    ),
  );
}
