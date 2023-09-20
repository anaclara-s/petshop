import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../shared/components/schedule_date_button.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime today = DateTime.now();

  void onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: TableCalendar(
              locale: 'pt_BR',
              rowHeight: 50,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              onDaySelected: onDaySelected,
              focusedDay: today,
              firstDay: DateTime.utc(2003),
              lastDay: DateTime.utc(2023, 12, 31),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: ScheduleDateButton(),
          ),
        ],
      ),
    );
  }
}
