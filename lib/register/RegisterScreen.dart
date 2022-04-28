import 'package:demo_api_call/home/HomeScreen.dart';
import 'package:demo_api_call/login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterView();
}

class RegisterView extends State<RegisterScreen> {
  bool _eyeIcon = true;
  final conEmail = TextEditingController();
  final conPassword = TextEditingController();
  late  SharedPreferences prefs;




   getPreference() async {
     prefs = await SharedPreferences.getInstance();
    return prefs;
  }


  @override
  void initState() {
    setState(() {
      getPreference();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Align(
            alignment: Alignment.center,
            child: Card(
              margin: EdgeInsets.all(20),
              elevation: 3,
                child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Padding(
                   padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                   child: Text( "Sign Up",
                   textAlign: TextAlign.center,
                   style:TextStyle(fontSize: 20)),
                 ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 5),
                    child: TextFormField(
                      controller: conEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.blue),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                    child: TextFormField(
                      controller: conPassword,
                      obscureText: !_eyeIcon,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(_eyeIcon
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: Colors.blue,
                            onPressed: () {
                              setState(() {
                                _eyeIcon = !_eyeIcon;
                              });
                            },
                          ),
                          labelText: "Password",
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.blue),
                          border: OutlineInputBorder()),
                    ),
                  ),Container(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
                            child: RaisedButton(
                              onPressed: () {

                                setState(() {
                                  prefs.setString('email',conEmail.text);
                                  prefs.setString('password',conPassword.text);
                                  print("Pref: ${prefs}");

                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                });

                              },
                              child: Text("Register"),
                            ))),
                ],
              ),
            )),
      ),
    );
  }
}
