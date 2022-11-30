import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  const Calendario({Key? key}) : super(key: key);

  @override
  _CalendarioState createState() => _CalendarioState();
}

var agora = DateTime.now();
var firstDay = DateTime(2022, 11 - 3, 28);
var lastDay = DateTime(2022, 11 + 3, 28);

class _CalendarioState extends State<Calendario> {

  CalendarFormat format = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          focusedDay: agora,
          firstDay: firstDay,
          lastDay: lastDay,
          calendarFormat: format,
          startingDayOfWeek: StartingDayOfWeek.monday,
          availableCalendarFormats: const {
            CalendarFormat.month: "Mês",
            CalendarFormat.week: "Semana",
            CalendarFormat.twoWeeks: "2 Semanas",
          },
          headerStyle: HeaderStyle(
            leftChevronIcon: const Icon(
              Icons.chevron_left,
              size: 24,
              color: Colors.black,
            ),
            rightChevronIcon: const Icon(
              Icons.chevron_right,
              size: 24,
              color: Colors.black,
            ),
            headerPadding: EdgeInsets.zero,
            formatButtonVisible: true,
            formatButtonShowsNext: false,
            formatButtonDecoration: BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            formatButtonTextStyle:
                const TextStyle(color: Colors.white, fontSize: 12),
            titleTextStyle: const TextStyle(color: Colors.blueGrey),
            titleCentered: true,
          ),
          calendarStyle: CalendarStyle(
            selectedDecoration: const BoxDecoration(
                color: Colors.blueGrey, shape: BoxShape.circle),
            selectedTextStyle: const TextStyle(color: Colors.pinkAccent),
            todayDecoration:
                BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
            todayTextStyle: const TextStyle(color: Colors.lightGreen),
            defaultDecoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            defaultTextStyle: const TextStyle(
              color: Colors.blueGrey,
            ),
            weekendDecoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            weekendTextStyle: const TextStyle(
              color: Colors.blueGrey,
            ),
          ),
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              String text;
              if (day.weekday == DateTime.sunday) {
                text = "Dom";
              } else if (day.weekday == DateTime.monday) {
                text = "Seg";
              } else if (day.weekday == DateTime.thursday) {
                text = "Ter";
              } else if (day.weekday == DateTime.wednesday) {
                text = "Qua";
              } else if (day.weekday == DateTime.tuesday) {
                text = "Qui";
              } else if (day.weekday == DateTime.friday) {
                text = "Sex";
              } else if (day.weekday == DateTime.saturday) {
                text = "Sab";
              } else {
                text = "Error";
              }
              return Center(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.blueGrey),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
