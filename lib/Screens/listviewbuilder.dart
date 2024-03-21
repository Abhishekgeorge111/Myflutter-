import 'package:flutter/material.dart';
import 'package:flutter_application_chat/utilities/listtile.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 150,
        backgroundColor: Colors.red[300],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 35,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "chats",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.business_center,
              size: 35,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 35,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
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
                    Text("Abhishek"),
                    Text("abhishek111@gmail.com"),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.notification_important),
              title: Text("Notifications"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("message"),
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text("camera"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Mail"),
            ),
            ListTile(
              leading: Icon(Icons.archive),
              title: Text("archeived"),
            )
          ],
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
          // scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          itemCount: listTileContent.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(listTileContent[index]["image"] as String),
                  radius: 30,
                ),
                title: Text(
                  listTileContent[index]["name"] as String,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  listTileContent[index]["message"] as String,
                  style: const TextStyle(
                      fontSize: 18, overflow: TextOverflow.ellipsis),
                ),
                trailing: Text(
                  listTileContent[index]["time"] as String,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
