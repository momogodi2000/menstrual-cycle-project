import 'package:flutter/material.dart';
import '../page/register.dart';
import '../page/login.dart';
import '../page/last_lauch.dart';
import '../previousInfo.dart';
import '../page/menstrual.dart';
import '../page/weight.dart';
final customRoutes = <String, WidgetBuilder>{
   '/': (context) => RegisterPage(),
   '/login': (context) => LoginPage(),
  '/discover': (context) => DiscoverAppPage(),
  '/previousInfo': (context) => PreviousInfo(),
 '/menstralcyclepage': (context) => MenstrualCyclePage(),
  '/weight': (context) => ScrollablePage(),
};