import 'package:demo_api_call/home/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget{


  LoginScreen();

  @override
  State<StatefulWidget> createState() => LoginView();

}

class LoginView extends State<LoginScreen>{

  bool _eyeIcon = true;
  final conEmail = TextEditingController();
  final conPassword = TextEditingController();
  late SharedPreferences prefs;

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


  worngCredentials(){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Alert!!'),
            content: Text('Your credentials are wrong'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK')),
            ],
          );
        });
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    child: Text( "Login",
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

                              var email=prefs.getString('email');
                             var password= prefs.getString('password');

                             if(email == conEmail.text){
                                if(password ==  conPassword.text){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                }else{
                                  worngCredentials();
                                }
                             }else{

                               worngCredentials();
                             }

                             print("Email: ${email}   Password: ${password}");



                            },
                            child: Text("Login"),
                          ))),
                ],
              ),
            )),
      ),
    );
  }

}