import 'package:flutter/material.dart';
import 'package:flutter_application_chat/utilities/listtile.dart';

class Chat_List extends StatelessWidget {
  const Chat_List({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
    );
  }
}

class Call_List extends StatelessWidget {
  const Call_List({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.call),
                SizedBox(
                  width: 4,
                ),
                Text(
                  listTileContent[index]["incoming"] as String,
                  style: const TextStyle(
                      fontSize: 18, overflow: TextOverflow.ellipsis),
                ),
              ],
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
    );
  }
}
