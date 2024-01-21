import 'package:flutter/material.dart';



class DiscoverAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'Discover Our App',
                      style: TextStyle(color: Colors.grey[700], fontSize: 20),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Text(
                            'Tools for Calculating Menstrual Cycle',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Explore the features that help you track and calculate your menstrual cycle. Our app provides tools to make this process easier and more informative.',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Note: Our platform does not encourage the use of contraceptive drugs.',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(height: 30),
                          RedButton(
                            onPressed: () {
                              // Add logic to launch the app
                              Navigator.of(context).pushNamed('/menstralcyclepage',);
                              //print('Launching App...');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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
