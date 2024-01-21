import 'package:flutter/material.dart';
import '../model/User.dart';
//import 'package:app/model/User.dart';
class UserNotifier extends ChangeNotifier{
  User user = new User(name: "", age: 0);
  void updateName(String name){
    user.changeName(name);
    notifyListeners();
  }
  
  void updateAge(){
    user.addAge();
    notifyListeners();
  }

  void updateUser(String name){
    user.changeName(name);
    user.addAge();
    notifyListeners();
  }
}