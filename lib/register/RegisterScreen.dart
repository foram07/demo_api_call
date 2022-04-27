import 'package:demo_api_call/home/HomeScreen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterView();
}

class RegisterView extends State<RegisterScreen> {
  bool _eyeIcon = true;

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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
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
