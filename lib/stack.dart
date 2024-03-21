import 'package:flutter/material.dart';

class AppDrawerExample extends StatelessWidget {
  AppDrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    // final height = screenSize.height;
    // final width = screenSize.width;
    // print(height);
    // print(width);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        // leading: Icon(Icons.person),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[100],
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?w=1200&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
                    ),
                    Text("Person Name"),
                    Text("person@gmail.com"),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.notification_important),
              title: Text("Notifications"),
            ),
            ListTile(
              leading: Icon(Icons.notification_important),
              title: Text("Notifications"),
            ),
            ListTile(
              leading: Icon(Icons.notification_important),
              title: Text("Notifications"),
            ),
            ListTile(
              leading: Icon(Icons.notification_important),
              title: Text("Notifications"),
            ),
            ListTile(
              leading: Icon(Icons.notification_important),
              title: Text("Notifications"),
            ),
            ListTile(
              leading: Icon(Icons.notification_important),
              title: Text("Notifications"),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 40,
                left: 70,
                child: Container(
                  height: 200,
                  width: 200,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Red",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 120,
                left: 160,
                child: Container(
                  height: 200,
                  width: 200,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Purple",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 220,
                child: Container(
                  height: 200,
                  width: 200,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade400,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Yellow",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
