import 'package:flutter/material.dart';
import 'package:flutter_application_chat/provider/prohome.dart';
import 'package:flutter_application_chat/provider/proseetings.dart';
final pages = [
  Provider_Home(),
  ProviderSettings(),
];

class MyNav extends StatefulWidget {
  const MyNav({super.key});

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  // final List<Widget> _screens = [
  //   Container(
  //     color: Colors.red,
  //     alignment: Alignment.center,
  //     child: const Text(
  //       'Home',
  //       style: TextStyle(fontSize: 40),
  //     ),
  //   ),
  //   Container(
  //     color: Colors.lightBlue,
  //     alignment: Alignment.center,
  //     child: Text(
  //       'Settings',
  //       style: TextStyle(fontSize: 40),
  //     ),
  //   ),
  // ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROVIDER'),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
        ],
      ),
    );
  }
}
