import 'package:flutter/material.dart';
import 'package:petshop/shared/themes/appbar_customized.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../shared/components/schedule_date_button.dart';

//import '../shared/themes/buttom_menu.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime today = DateTime.now();

  void onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomized(),
      body: Column(
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

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CalendarDateButton(),
              ),
            ],
          ),
          //ButtomMenu(),
        ],
      ),
    );
  }
}
