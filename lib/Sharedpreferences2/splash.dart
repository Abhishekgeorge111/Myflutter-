import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_application_chat/Sharedpreferences2/home.dart';
import 'package:flutter_application_chat/Sharedpreferences2/login.dart';
import 'package:flutter_application_chat/main.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenn extends StatefulWidget {
  const SplashScreenn({super.key});

  @override
  State<SplashScreenn> createState() => _SplashScreennState();
}


class _SplashScreennState extends State<SplashScreenn> with TickerProviderStateMixin{
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    late final Animation<double> animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  
  @override
  void initState(){
    gotoHome();
    super.initState();
  }


@override
void dispose(){
  controller.dispose();
  super.dispose();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: FlutterLogo(size: 250,
          ),
          ),
          ),
    );
  }

void gotologin(){
  Timer(const Duration(seconds:10), (){
  Navigator.pushReplacement(
    context, MaterialPageRoute(
      builder: (context) => LoginPg(),
      ));

  }
  );
}

Future <void> gotoHome() async{
  final sharedPrefs = await
  SharedPreferences.getInstance();
  final userloggedIn = sharedPrefs.getBool(Saved_Key);
  if(userloggedIn == null|| userloggedIn == false){
    gotologin();
  }else{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Homeprofilepage())
    );
  }
}
}