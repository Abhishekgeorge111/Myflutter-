import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => __BottomNavStateState();
}

class __BottomNavStateState extends State<BottomNav> {
  int _selectedIndex = 0;
  int _count = 0;
  final screens = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'index 2: School',
    ),
  ];
  Widget build(BuildContext context) {
    print('state changed');
    return Scaffold(
      appBar: AppBar(
        title: Text("counter App"),
        centerTitle: true,
      ),
      body: screens.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 1,
        backgroundColor: Colors.black38,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_sharp),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Message",
          ),
        ],
      ),
    );
  }
}
