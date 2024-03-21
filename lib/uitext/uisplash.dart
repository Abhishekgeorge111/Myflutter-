import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_chat/uitext/getstarted.dart';
// import 'package:flutter_application_chat/uitext/uitest.dart';
import 'package:lottie/lottie.dart';

class SplashUi extends StatefulWidget {
  const SplashUi({super.key});

  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (ctx) => const GetStart(),
          ),
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        // child: Lottie.asset(
        //   "asset/splash.json",
        //   height: screenSize.height * 0.25,
        //   width: screenSize.height * 0.25,
        // ),
        child: Lottie.network(
            'https://lottie.host/0047f6de-0e8a-4287-b931-90c4a68298bf/yDKsmJiOxB.json',
            height: screenSize.height * 0.80,
            width: screenSize.width * 0.80),
      ),
    );
  }
}
