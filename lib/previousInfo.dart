import 'dart:ui';
import 'package:flutter/material.dart';
import 'model/mentralcyecle.dart';
import 'menstralcycleinfo.dart';
class PreviousInfo extends StatefulWidget {
  PreviousInfo({super.key});
  @override
  State<PreviousInfo> createState() => _PreviousInfoState();
}

class _PreviousInfoState extends State<PreviousInfo> {

  DateTime today = DateTime.now();
  MenstralCycle Cycle = MenstralCycle();
  late Map<String, Map<String, dynamic>> _monthsAndDays;
  late List<String> months;
  //int _p=1;
  int _startDay = 1;
  @override
  Widget build(BuildContext context) {
     _monthsAndDays = Cycle.getPreviousMonths(today.month);
     months = _monthsAndDays.keys.toList();
    //monthsAndDays[months[0]]?["biginingDay"]=78;
     String mapValuesText= '';
     int average;
     //int p=1;
    void changeInfo(){
      _monthsAndDays = Cycle.getEndingDay(_monthsAndDays);
      average = Cycle.getAverageDays(_monthsAndDays);
      setState(() {
        //mapValuesText = '';
        _monthsAndDays.forEach((month, data) {
          mapValuesText +=
          '${month}: biginingDay ${data['biginingDay']}, endingDay ${data['endingDay']}\n';
        });
        // print(mapValuesText);
        // print(average);

      });
      //MenstralCycleInfo(avg: average);
      //Navigator.of(context).pushNamed('/discover', arguments: average);
      Navigator.push(context,MaterialPageRoute(
          builder: (context) => MenstralCycleInfo(avg: average),
      ));

    }

    return Scaffold(
      backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            children: [
              Container(
               margin: EdgeInsets.only(top: 200, left: 30),
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Day', style: TextStyle(fontSize: 30,),)),
                    DataColumn(label: Text('Months', style: TextStyle(fontSize: 30,),)),
                  ],
                  rows: _monthsAndDays.entries.map((entry) => DataRow(cells: [
                      DataCell(
                        DropdownButton<int>(
                          value: entry.value['biginingDay'],//setState((){ entry.value['biginingDay'] }),

                          items: List.generate(entry.value['numberOfDays'], (index) => index + 1)
                              .map((value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              entry.value['biginingDay'] = newValue!;
                              //_p=newValue;
                            });
                            //changeInfo();
                            //changeState(newValue!);
                            //WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));

                          },
                        ),
                      ),
                      DataCell(Text(entry.key, style: TextStyle(fontSize: 25),)),
                    ])).toList(),

                ),
                  // rows: _monthsAndDays.entries.map((entry) => DataRow(cells: [
                  //   DataCell(
                  //     DropdownButton<int>(
                  //       value: entry.value['biginingDay'],//setState((){ entry.value['biginingDay'] }),
                  //
                  //       items: List.generate(entry.value['numberOfDays'], (index) => index + 1)
                  //           .map((value) {
                  //         return DropdownMenuItem<int>(
                  //           value: value,
                  //           child: Text(value.toString()),
                  //         );
                  //       }).toList(),
                  //       onChanged: (newValue) {
                  //         setState(() {
                  //           entry.value['biginingDay'] = newValue!;
                  //           //_p=newValue;
                  //         });
                  //         //changeInfo();
                  //         //changeState(newValue!);
                  //         //WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
                  //
                  //       },
                  //     ),
                  //   ),
                  //   DataCell(Text(entry.key, style: TextStyle(fontSize: 25),)),
                  // ])).toList(),
                ),

              Text(mapValuesText, style: TextStyle(fontSize: 20),),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: SizedBox(

                  width: 300,
                  child: ElevatedButton(
                      onPressed: (){
                        changeInfo();
                        //print("pp");
                      },
                      child: Text('Next', style: TextStyle(color: Colors.black, fontSize: 20)),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
                    //minWidth: 200,
                  ),
                ),
              ),
          ],
          )
        ),
    );
  }
}
