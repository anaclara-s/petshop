import 'package:flutter/material.dart';

import '../../shared/widgets/custom_appbar.dart';
import '../../shared/themes/buttom_menu.dart';

class CalendarDateScreeen extends StatelessWidget {
  const CalendarDateScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //
          ButtomMenu(),
        ],
      ),
    );
  }
}
