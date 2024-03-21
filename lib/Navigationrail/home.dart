import 'package:flutter/material.dart';

class HomeNew extends StatefulWidget {
  const HomeNew({super.key});

  @override
  State<HomeNew> createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {
  final List<Widget> _screens = [
    Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Text(
        'Feed',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      child: Text(
        'Home',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.pink,
      alignment: Alignment.center,
      child: Text(
        'Feed',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        'Feed',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Rail'),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.indigoAccent,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Home'),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIndex: _selectedIndex,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.home), label: Text('Home')),
              NavigationRailDestination(
                  icon: Icon(Icons.feed), label: Text('Home')),
              NavigationRailDestination(
                  icon: Icon(Icons.favorite), label: Text('Home')),
              NavigationRailDestination(
                  icon: Icon(Icons.settings), label: Text('Home')),
            ],
          ),
          Expanded(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
