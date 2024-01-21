import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenstrualCyclePage(),
    );
  }
}

class MenstrualCyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100, // Adjust the height as needed
            color: Colors.red,
            child: Center(
              child: Text(
                'Red Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Do you have a regular menstrual cycle (not more than 7 days)?',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  MenstrualCycleOptions(),
                  SizedBox(height: 30),
                  ElevatedButton(onPressed: (){
                     Navigator.of(context).pushNamed('/weight',);
                  },

                      child: Text('Next'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenstrualCycleOptions extends StatefulWidget {
  @override
  _MenstrualCycleOptionsState createState() => _MenstrualCycleOptionsState();
}

class _MenstrualCycleOptionsState extends State<MenstrualCycleOptions> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text('My menstrual cycle is regular'),
          value: 'Regular',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text('My menstrual cycle is irregular'),
          value: 'Irregular',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text("I don't know"),
          value: 'Unknown',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value.toString();
            });
          },
        ),
      ],
    );
  }
}

class RedButton extends StatelessWidget {
  final VoidCallback onPressed;

  RedButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),
      ),
      child: Text('Next', style: TextStyle(fontSize: 15),),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text(
          'This is the next page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
