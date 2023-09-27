import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../shared/components/floating_vertical_menu.dart';
import '../../shared/lists/calendar/available_days_list.dart';
import '../../shared/widgets/custom_appbar.dart';
// import '../../shared/themes/buttom_menu.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDay = DateTime.now();

  void onDaySelected(DateTime selectedDay, DateTime? focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      floatingActionButton: const FloatingMenu(),
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
                selectedDayPredicate: (day) => isSameDay(day, selectedDay),
                onDaySelected: onDaySelected,
                focusedDay: selectedDay,
                firstDay: DateTime.utc(2003),
                lastDay: DateTime.utc(2023, 12, 31),
                startingDayOfWeek: StartingDayOfWeek.sunday,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    Map<String, dynamic>? selectedDayData;
                    for (var data in availability) {
                      if (data['dia'] == getDayOfWeek(selectedDay)) {
                        selectedDayData = data;
                        break;
                      }
                    }

                    if (selectedDayData == null) {
                      return const Center(
                        child: Text('Nenhuma data selecionada'),
                      );
                    }

                    return ListTile(
                      title: Text('${selectedDayData['dia']}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Banho/Tosa: ${selectedDayData['banho_tosa'] ? 'Disponível' : 'Indisponível'}'),
                          Text(
                              'Veterinário: ${selectedDayData['veterinario'] ? 'Disponível' : 'Indisponível'}'),
                          Text(
                              'Loja: ${selectedDayData['fechado'] ? 'Aberta' : 'Fechada'}'),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            // const ButtomMenu(),
          ],
        ),
      ),
    );
  }
}

String getDayOfWeek(DateTime dateTime) {
  List<String> daysOfWeek = [
    'Domingo',
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sábado'
  ];
  return daysOfWeek[dateTime.weekday % 7];
}
