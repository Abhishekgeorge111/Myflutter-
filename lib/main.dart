import 'package:flutter/material.dart';
import 'package:flutter_application_chat/CardScreen/card.dart';
import 'package:flutter_application_chat/LoginScreen/loginscreen.dart';
import 'package:flutter_application_chat/Navigationrail/home.dart';
import 'package:flutter_application_chat/Screens/listviewbuilder.dart';
import 'package:flutter_application_chat/Screens/staackexample.dart';
import 'package:flutter_application_chat/Screens/tabbar.dart';
import 'package:flutter_application_chat/Sharedpreferences2/home.dart';
import 'package:flutter_application_chat/Sharedpreferences2/splash.dart';
import 'package:flutter_application_chat/Splash/splashscreen.dart';
import 'package:flutter_application_chat/bottomnavigation/bottom%20navi.dart';
import 'package:flutter_application_chat/counterprovider/counter.dart';
import 'package:flutter_application_chat/counterprovider/provider.dart';
import 'package:flutter_application_chat/example/homexample.dart';
import 'package:flutter_application_chat/example/profile.dart';
import 'package:flutter_application_chat/gridlist.dart';
import 'package:flutter_application_chat/provider/provider.dart';
import 'package:flutter_application_chat/provider/provierdemo.dart';
import 'package:flutter_application_chat/sharedpeferences/Splash.dart';
import 'package:flutter_application_chat/stack.dart';
import 'package:flutter_application_chat/textfield/textfiled.dart';
import 'package:flutter_application_chat/textfield/utils/splash.dart';
import 'package:flutter_application_chat/uitext/uisplash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
String Saved_Key = 'abhishekgeorge111@gmail.com';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers:[
     ChangeNotifierProvider(
      create: (context) => ProviderNewDemo(),
     ),
     ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyCounter(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
