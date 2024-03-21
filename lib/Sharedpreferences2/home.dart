import 'package:flutter/material.dart';
import 'package:flutter_application_chat/Sharedpreferences2/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homeprofilepage extends StatelessWidget {
  const Homeprofilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final shared = await SharedPreferences.getInstance();

            shared.clear();

            // nav
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (ctx) => LoginPg(),
                ),
                (route) => false);
          },
          child: const Text("logout"),
        ),
      ),
    );
  }
}