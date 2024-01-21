import "dart:io";
import 'package:intl/intl.dart';
List<int> getPreviousMonths(int presentMonth){
  List<int> previousMonths = [];
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
  return previousMonths;
}
void main(){
  //var name = stdin.readLineSync() ;
  DateTime today = DateTime.now();
  print(today);
  List<String> months=[];
  List<int> events=getPreviousMonths(today.month);
  //adding the different months in the array
  int a=0;

  for(int i=0; i<=2; i++){
    //print(DateFormat('MMMM').format(DateTime(today.year, events[i])));
    months.add(DateFormat('MMMM').format(DateTime(today.year, events[i])));
  }
  months.add(DateFormat('MMMM').format(DateTime(today.year, today.month)));
  events.add(today.month);

  Map<String, Map<String, dynamic>> monthAndDay={
    months[0]:{
      "biginingDay": 0,
      "endingDay": 0,
      "endingMonth": ""
    },

    months[1]:{
      "biginingDay": 0,
      "endingDay": 0,
      "endingMonth": ""
    },

    months[2]:{
      "biginingDay": 0,
      "endingDay": 0,
      "endingMonth": ""
    },

    months[3]:{
      "biginingDay": 0,
      "endingDay": 0,
      "endingMonth": ""
    }

  };

  // Map<String, List<int>> monthAndDay = {
  //   months[0]: [],
  //   months[1]: [],
  //   months[2]: [],
  //   months[3]: []
  // };

  //Take the bigining of menstration of previous 3 months and for the current month
  // for(int i=0; i<=3; i++) {
  //   int day=0;
  //   do {
  //     stdout.write('Enter the day of bigining for ${months[i]} ');
  //      day = int.parse(stdin.readLineSync() as String);
  //   }while(day > DateTime(today.year, events[i] + 1, 0).day);
  //   //monthAndDay[months[i]]?.add(day);
  //   monthAndDay[months[i]]?["biginingDay"]=day;
  // }

  // //Generate the end of the mentration of each month
  // for(int i=0; i<3; i++){
  //   int? lastDay = monthAndDay[months[i+1]]?[0];
  //   monthAndDay[months[i]]?.add(lastDay!-1);
  // }
  // print(monthAndDay);
  print(DateTime(2020, 12, 0).day);

}