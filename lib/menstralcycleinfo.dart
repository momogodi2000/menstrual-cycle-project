import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MenstralCycleInfo extends StatefulWidget {
   int avg;
  MenstralCycleInfo({super.key, required this.avg});

  @override
  State<MenstralCycleInfo> createState() => _MenstralCycleInfoState();
}

class _MenstralCycleInfoState extends State<MenstralCycleInfo> {
  DateTime today = DateTime.now();
  late  List<DateTime> markedDays;
  late List<DateTime> _strippedMarkedDays;
  int total = 30;
  late int _ovulationStart;


  @override
  Widget build(BuildContext context) {
     // Subtract 14 and adjust for range
    // int ovulationEnd = total - 12;
    //_ovulationStart =12;
    markedDays = List.generate(total, (index) => today.add(Duration(days: index)));

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            child: TableCalendar(
              rowHeight: 43,
              headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
              focusedDay: today,
              firstDay: DateTime.utc(1990, 2, 1),
              lastDay: DateTime.utc(2030, 3, 14),
              eventLoader: (day) {
                // Check if the day is in the markedDays list
                // List<DateTime> i= [DateTime(2024, 01, 22), DateTime(2024, 01, 23)];
                // return i.contains(day) ? ['Menstrual '] : [];
                DateTime strippedDay = DateTime(day.year, day.month, day.day);
                _strippedMarkedDays = markedDays.map((md) =>
                    DateTime(md.year, md.month, md.day)).toList();
                String type;
                // setState(() {
                //   _ovulationStart = _strippedMarkedDays.last as int;
                // });

                return _strippedMarkedDays.contains(strippedDay) ? ["holidayDecoration"] : [];
              },
              calendarStyle: CalendarStyle(
                // decoration: BoxDecoration(
                //   shape: BoxShape.rectangle,
                //   borderRadius: BorderRadius.circular(8.0),
                // ),
                defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),

            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                //print(markedDays),
                Row(
                  children: [
                    Text('Mestrationday days from ${_strippedMarkedDays[0].day} to ${_strippedMarkedDays[5].day}', style: TextStyle(fontSize: 25)),

            ]
                ),

                Row(
                    children: [
                      Text('Ovulation days from ${_strippedMarkedDays[13].day} to ${_strippedMarkedDays[17].day}', style: TextStyle(fontSize: 25)),
                    ]
                ),



              ],
            ),
          ),
    ]
      ),
    );
  }
}
