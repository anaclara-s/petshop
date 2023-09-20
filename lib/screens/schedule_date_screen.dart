import 'package:flutter/material.dart';

import '../shared/themes/appbar_customized.dart';
import '../shared/themes/buttom_menu.dart';

class ScheduleDateScreeen extends StatelessWidget {
  const ScheduleDateScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomized(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('TELA'),
          ButtomMenu(),
        ],
      ),
    );
  }
}
