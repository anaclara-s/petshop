import 'package:flutter/material.dart';
import 'package:petshop/shared/lists/calendar/available_days_list.dart';
import 'package:petshop/shared/themes/appbar_customized.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../shared/components/calendar_button.dart';

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
      appBar: const AppBarCustomized(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: TableCalendar(
                locale: 'pt_BR',
                rowHeight: 50,
                headerStyle: const HeaderStyle(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: availability.length,
                  itemBuilder: (context, index) {
                    bool isDaySelected = availability[index]['dia'] ==
                        _getSelectedDayString(today);
                    bool isBanhoTosaAvailable =
                        availability[index]['banho_tosa'];
                    bool isVeterinarioAvailable =
                        availability[index]['veterinario'];
                    bool isDomingoAvailable = availability[index]['fechado'];
                    if (isDaySelected &&
                        (isBanhoTosaAvailable ||
                            isVeterinarioAvailable ||
                            (isDomingoAvailable &&
                                (today.weekday == DateTime.saturday ||
                                    today.weekday == DateTime.sunday)))) {
                      return ListTile(
                        title: Text('${availability[index]['dia']}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Banho/Tosa: ${availability[index]['banho_tosa'] ? 'Disponível' : 'Indisponível'}'),
                            Text(
                                'Veterinário: ${availability[index]['veterinario'] ? 'Disponível' : 'Indisponível'}'),
                          ],
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              ],
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CalendarDateButton(),
                ),
              ],
            ),
            //ButtomMenu(),
          ],
        ),
      ),
    );
  }
}

String _getSelectedDayString(DateTime selectedDay) {
  final daysOfWeek = [
    'Domingo',
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sábado',
  ];
  int daysOfWeekIndex = selectedDay.weekday;
  daysOfWeekIndex = daysOfWeekIndex.clamp(0, 6);

  return daysOfWeek[daysOfWeekIndex];
}
