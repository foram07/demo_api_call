
import 'package:demo_api_call/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget{
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<SplashView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/splash.json",
          repeat: true,
          reverse: false,
          animate: true,
        ),
      )
    );
  }

@override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }
}