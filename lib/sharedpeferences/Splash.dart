import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_chat/sharedpeferences/Home.dart';
import 'package:flutter_application_chat/sharedpeferences/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
const sharedPreferenceUserkey = "mithun@gmail.com";


class SplashApp extends StatefulWidget {
  const SplashApp({super.key});

  @override
  State<SplashApp> createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {
   void gotoLogin() {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (ctx) => const AppLogin(),
          ),
        );
      },
    );
  }

  void checkUserLog() async {
    // shared predf
    final shared = await SharedPreferences.getInstance();
    final user = shared.getBool(sharedPreferenceUserkey);

    if (user == null || user == false) {
      gotoLogin();
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => HomeApp(),
        ),
      );
    }
  }

  @override
  void initState() {
    checkUserLog();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    print(screenSize.height);
    print(screenSize.width);
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: screenSize.height * 0.24,
          width: screenSize.width * 0.48,
          child: Image.network('https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bG9nb3xlbnwwfHwwfHx8MA%3D%3D'),
        ),
      ),
    );
  }
}

