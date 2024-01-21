import 'package:flutter/material.dart';
import 'package:flutter_class/model/User.dart';
import 'animation/animation.dart';
import 'detail.dart';
import 'model/User.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User user = User(name: "Alban", age: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  width: double.infinity,
                  height: 500,
                  color: Colors.red,

                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child:
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera),
                ),
              )
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
              const snackdemo = SnackBar(
                content: Text('Welcome to AICS'),
                backgroundColor: Colors.transparent,
                elevation: 10,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(5),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackdemo);
              // 'showSnackBar' is deprecated and shouldn't be used.
              //Use ScaffoldMessenger.showSnackBar.
              // Scaffold.of(context).showSnackBar(snackdemo);
            },
            child: const Text('Click Here'),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/details',arguments: user);

              },
            child: const Text('Move to next page'),
          ),
        ],
      ),
    );
  }
}
