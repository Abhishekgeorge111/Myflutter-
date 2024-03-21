import 'package:flutter/material.dart';
import 'package:flutter_application_chat/provider/provierdemo.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ProviderSettings extends StatelessWidget {
  const ProviderSettings({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("build running");
    final TextEditingController usernameController = TextEditingController();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('Name : ', style: TextStyle(color: Colors.black)),
                  Consumer(
                    builder: (context, value, child) {
                      debugPrint('consumer running....');
                      return Text(
                        context.watch<ProviderNewDemo>().username,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      );
                    },
                  )
                ],
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Gap(20),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<ProviderNewDemo>()
                      .changeUserName(newusername: usernameController.text);
                  usernameController.clear();
                },
                child: Text("login"),
              ),
              // widget reusing using provider defined in new demo
              Gap(100),
              Row(
                children: [
                  Provider.of<ProviderNewDemo>(context).widget(),
                  Provider.of<ProviderNewDemo>(context).widget(),
                  Provider.of<ProviderNewDemo>(context).widget(),
                  Provider.of<ProviderNewDemo>(context).widget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
