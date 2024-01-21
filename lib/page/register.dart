import 'dart:convert';
import '../profile.dart';
import 'package:flutter/material.dart';
import '../component/TextField.dart';
import 'package:http/http.dart' as http;
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future login(BuildContext cont) async{
    //List<String> pp = ['pop','pap','sadsa'];

    var url = "http://172.20.10.4/localconnect/connect.php";
    final data = {
      "username": usernameController.text,
      "password": passwordController.text,
      "email": emailController.text,
      "action": 'con',
    };
    var response = await http.post(Uri.parse(url),body: jsonEncode(data));
   // var data = json.decode(response.body);
    if(response.statusCode == 200){
       //Navigator.push(cont, MaterialPageRoute(builder: (context)=>Profile()));
      Navigator.of(cont).pushNamed('/login',);
    }
    else{

      const snackdemo = SnackBar(

        content: Text('User not found', style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue,

        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          top: 20,
          bottom: 120,
        ),
      );

      ScaffoldMessenger.of(cont).showSnackBar(snackdemo);
    }
  }

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
                      //padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/background.jpg'),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                    // SizedBox(height: 50),
                    //logo
                    //  Icon(Icons.lock, size: 100, color: Colors.red,),

                    // SizedBox(height: 50),

                    Text('Welcome ', style: TextStyle(color: Colors.grey[700], fontSize: 20),),

                    SizedBox(height: 25),

                    //textfield
                    MyTextField(controller: usernameController,
                      hintText: 'Username', obscureText: false,
                      icon: Icon(Icons.person_2_rounded, color: Colors.redAccent,),),
                    SizedBox(height: 25),

                    MyTextField(controller: emailController,
                      hintText: 'E-mail', obscureText: false,
                      icon: Icon(Icons.mail, color: Colors.redAccent,),),
                    SizedBox(height: 25),

                    MyTextField(controller: passwordController,
                      hintText: 'Password', obscureText: true,
                      icon: Icon(Icons.lock, color: Colors.redAccent,),),

                    ElevatedButton(
                        onPressed: (){
                          login(context);
                        },
                        child: Text('Sign in'))
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
