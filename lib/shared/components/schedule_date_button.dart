import 'package:flutter/material.dart';

import '../../screens/calendar/calendar_date_screen.dart';
import '../constants/constants.dart';

class CalendarDateButton extends StatelessWidget {
  const CalendarDateButton({super.key});

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
                builder: (context) => CalendarDateScreeen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
