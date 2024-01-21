import 'package:flutter/material.dart';
import 'package:flutter_class/page/login.dart';
import 'provider/UserNotifier.dart';
import 'config/root.dart';
import 'page/register.dart';
import 'page/weight.dart';
import 'previousInfo.dart';
import 'page/register.dart';
void main() {
  //print("pop");
  runApp(MyApp());

    // MultiProvider(providers:[
    //   ChangeNotifierProvider(create: (context)=>UserNotifier()),
    // ],

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: customRoutes,
       home: null,
      // routes: {
      //   'regis': (context) => RegisterPage(),
      //   'details': (context) => ScrollablePage(),
      // },
    );
  }
}
/*
/* theme: ThemeData(brightness: Brightness.dark),
       initialRoute: '/',
      routes: customRoutes,*/
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return
  }
}*/

