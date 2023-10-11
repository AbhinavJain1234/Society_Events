import 'package:flutter/material.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';

class HorizontalCalendarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();
    final DateTime oneYearLater = today.add(const Duration(days: 365));

    return HorizontalCalendar(
      date: today,
      lastDate: oneYearLater,
      textColor: Colors.black,
      backgroundColor: Colors.white,
      selectedColor: const Color.fromARGB(255, 252, 82, 77),
      showMonth: true,
      locale: Localizations.localeOf(context),
      onDateSelected: (date) {},

    );
  }
}

