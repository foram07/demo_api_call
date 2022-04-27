import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{



  @override
  State<StatefulWidget> createState() => LoginView();

}

class LoginView extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Get Started"),
        ),

      ),
    );
  }

}