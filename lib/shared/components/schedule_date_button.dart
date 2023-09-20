import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../../screens/schedule_date_screen.dart';

class ScheduleDateButton extends StatelessWidget {
  const ScheduleDateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(padding: EdgeInsets.all(kDefaultPaddin)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScheduleDateScreeen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
