import 'package:demo_api_call/home/user_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{

   late User userItems;

  DetailScreen(User userItem){
    userItems=userItem;
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Demo'),
          ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 5, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name:${userItems.name}"),
              Text("Company:${userItems.company}"),
              Text("Phone:${userItems.phone}"),
              Text("Email:${userItems.email}"),
            ],
          ),


        )
      )
    );
  }



  
}

