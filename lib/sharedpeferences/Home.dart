import 'package:flutter/material.dart';
import 'package:flutter_application_chat/sharedpeferences/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

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
                  builder: (ctx) => AppLogin(),
                ),
                (route) => false);
          },
          child: const Text("logout"),
        ),
      ),
    );

    

  }
}