import 'package:flutter/material.dart';
import 'package:flutter_application_chat/counterprovider/counter_page.dart';
import 'package:flutter_application_chat/counterprovider/home.dart';
import 'package:flutter_application_chat/counterprovider/settings.dart';
final pages = [
  CounterHome(),
  CounterSettings(),
  CounterPage(),


];
class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text('counter'),
    centerTitle: true,
    backgroundColor: Colors.lightBlue,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.indigoAccent,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
               BottomNavigationBarItem(
              icon: Icon(Icons.add_box_sharp), label: 'Counter'),

        ],
      ),
    );
  }
}