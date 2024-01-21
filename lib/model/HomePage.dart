import 'package:flutter/material.dart';
//import 'package:app/model/User.dart';
int? number;
int i=0;
int j=0;
class MyHomePage extends StatefulWidget {
  static const int v=9;
  final String title;
  MyHomePage({super.key,required this.title});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int age;
  @override
  void initState() {
    // TODO: implement initState
    age=5;

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: TextButton(
      onPressed: (){

        }
      ,
        child: Icon(Icons.remove,size:90),
      ),
      body: Column(children:[Text(""),
      Text("")])
    );
  }
}





