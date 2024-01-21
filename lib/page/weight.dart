import 'package:flutter/material.dart';

class ScrollablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Select Height and Weight'),
              background: Container(
                color: Colors.red,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Select Height:',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      HeightSlider(),
                      SizedBox(height: 20),
                      Text(
                        'Select Weight:',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      WeightDropdown(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                RedButton(onPressed: () {
                  // Add the functionality you want when the red button is pressed
                  Navigator.of(context).pushNamed('/previousInfo',);
                  print('Red button pressed!');
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeightSlider extends StatefulWidget {
  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  double _currentHeight = 160.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _currentHeight,
          min: 100.0,
          max: 220.0,
          divisions: 120,
          onChanged: (value) {
            setState(() {
              _currentHeight = value;
            });
          },
        ),
        Text('${_currentHeight.toStringAsFixed(0)} cm'),
      ],
    );
  }
}

class WeightDropdown extends StatefulWidget {
  @override
  _WeightDropdownState createState() => _WeightDropdownState();
}

class _WeightDropdownState extends State<WeightDropdown> {
  int _currentWeight = 60;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: _currentWeight,
      items: List.generate(150, (index) => index + 50)
          .map((weight) => DropdownMenuItem<int>(
        value: weight,
        child: Text('$weight kg'),
      ))
          .toList(),
      onChanged: (value) {
        setState(() {
          _currentWeight = value!;
        });
      },
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
      child: Text('Red Button'),
    );
  }
}
