import 'package:flutter/material.dart';
import 'package:flutter_application_chat/sharedpeferences/Home.dart';
import 'package:flutter_application_chat/sharedpeferences/Splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLogin extends StatelessWidget {
  const AppLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // shared preference
                  final sharedPref = await SharedPreferences.getInstance();
                  sharedPref.setBool(sharedPreferenceUserkey, true);

                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => HomeApp()),
                  );
                },
                child: const Text("login"),
              )
            ],
          ),
        ),
        ),

    );
  }
}