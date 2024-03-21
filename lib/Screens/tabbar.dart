import 'package:flutter/material.dart';
import 'package:flutter_application_chat/Screens/chat_list.dart';
import 'package:flutter_application_chat/utilities/listtile.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          //customappbar
          children: [
            Container(
              height: 110,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 12, 59, 146),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Chit Chat',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 10,
                bottom: 10,
              ),
              child: SizedBox(
                  height: 120,
                  // color: Colors.amber,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Container(
                                padding: EdgeInsets.all(6),
decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.green.shade400,
                                    )),
                                child: CircleAvatar(
                                  radius: 29,
                                  backgroundImage:
                                      // NetworkImage(
                                      //   'https://images.unsplash.com/photo-1615109398623-88346a601842?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                      // ),
                                      NetworkImage(listTileContent[index]
                                          ["image"] as String),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              listTileContent[index]["name"] as String,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ],
                        );
                      })),
            ),
            Expanded(
                child: Column(
              children: [
                SizedBox(
                  child: TabBar(
                    indicatorWeight: 3.0,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    dividerColor: Colors.white,
                    tabs: [
                      Tab(
                          child: Text(
                        "chats",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )),
                      Tab(
                          child: Text(
                        "Calls",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )),
                      Tab(
                        child: Text(
                          "Groups",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(children: [
                  const Chat_List(),
                  const Call_List(),
                  Container(
                    child: Text(
                      'No groups',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ]))
              ],
            ))
          ],
        ),
        // floatingActionButton: FloatingActionButton(onPressed: (){
        //   Navigator.of(context).push(
        //     MaterialPageRoute(builder: (context) =>newchat(),)
        //   );
        // },
        // child: const Icon(Icons.message),
        // ),
      ),
    );
  }
}
