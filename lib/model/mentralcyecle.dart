import 'package:intl/intl.dart';
class MenstralCycle{
  // String name;
  // MenstralCycle({required this.name});


  //receive the present month and returns the previous 3 months
  Map<String, Map<String, dynamic>> getPreviousMonths(int presentMonth){
    DateTime today= DateTime.now();
    List<int> previousMonths = [];
    List<String> months = [];

    if(presentMonth <= 3){
      int start = presentMonth+9;
      if(start > 12){start-2;}
      for(int i=0; i<=2; i++){
        previousMonths.add(start);
        start++;
      }
    }
    else{
      int start = presentMonth-3;
      //if(start == 0){start++;}
      for(int i=0; i<=2; i++){
        previousMonths.add(start);
        start++;
      }
    }
    for(int i=0; i<=2; i++){
      //print(DateFormat('MMMM').format(DateTime(today.year, events[i])));
      months.add(DateFormat('MMMM').format(DateTime(today.year, previousMonths[i])));
    }
    months.add(DateFormat('MMMM').format(DateTime(today.year, today.month)));
    previousMonths.add(today.month);
    Map<String, Map<String, dynamic>> monthAndDay={
      months[0]:{
        "biginingDay": 1,
        "endingDay": 0,
        "totalDays":0,
        "numberOfDays": DateTime(today.year, previousMonths[0], 0).day
      },

      months[1]:{
        "biginingDay": 1,
        "endingDay": 0,
        "totalDays":0,
        "numberOfDays": DateTime(2024, previousMonths[1] , 0).day
      },

      months[2]:{
        "biginingDay": 1,
        "endingDay": 0,
        "totalDays":0,
        "numberOfDays": DateTime(2024, previousMonths[2] , 0).day
      },

      months[3]:{
        "biginingDay": 1,
        "endingDay": 0,
        "totalDays":0,
        "numberOfDays": DateTime(2024, previousMonths[3] , 0).day
      }
    };

    return monthAndDay;
  }
  //Generate last day of menstration of each month
  Map<String, Map<String, dynamic>> getEndingDay(Map<String, Map<String, dynamic>> values){
    List<MapEntry<String, Map<String, dynamic>>> entries = values.entries.toList();

    for(int i=0; i<=2; i++){
     int lastDay = values[entries[i+1].key]!['biginingDay']-1;
      entries[i].value['endingDay'] = lastDay;

      num numberOfDays = lastDay - entries[i].value['biginingDay'] +1;
      entries[i].value['totalDays'] = numberOfDays;
    }

    values = Map.fromEntries(entries); //update the original map
    return values;
  }
  //Calculate the average number of days
  int getAverageDays(Map<String, Map<String, dynamic>> values){
    List<MapEntry<String, Map<String, dynamic>>> entries = values.entries.toList();
    num total=0;
    for(int i=0; i<=2; i++){
       total += values[entries[i].key]!['totalDays'];
    }
   double average = total!/3;

    return average.toInt();
  }
}