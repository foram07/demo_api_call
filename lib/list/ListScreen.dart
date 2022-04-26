import 'dart:convert';
import 'package:demo_api_call/home/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  ListingView createState() => ListingView();
}

Future<List<User>> fetchData() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => User.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occurred!');
  }
}

class ListingView extends State<ListScreen> {
  List<User> user = [];

  @override
  void initState() {
    super.initState();

    fetchData().then((value) => {
          setState(() => {user = value})
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: user.length,
          itemBuilder: (BuildContext context, int index) {
            User userItem = user[index];
            return GestureDetector(
              child: Container(
                  height: 100,
                  child: Card(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                          child: Container(
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Name: ${userItem.name}"),
                                    Text("Email: ${userItem.email}"),
                                    Text("Company: ${userItem.company?.name}"),
                                    Text("Contact Number: ${userItem.phone}")
                                  ],
                                ),
                                Expanded(
                                    child: Container(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                        )))
                              ]))))),
            );
          },
        ),
      ),
    );
  }
}
