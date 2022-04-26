import 'package:demo_api_call/fav/FavoriteScreen.dart';
import 'package:demo_api_call/list/ListScreen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  HomeView createState() => HomeView();
}

  class HomeView extends State<HomeScreen>{
   int _selectedIndex = 0;
    List<Widget> _widgetOptions = <Widget>[
      ListScreen(),
       FavoriteScreen(),
    ];


    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Container(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',
            backgroundColor: Colors.blue ,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
            label: 'Favorite',
              backgroundColor: Colors.blue
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
      ),
    );

  }

  }

