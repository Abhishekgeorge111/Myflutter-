import 'package:flutter/material.dart';
import 'package:flutter_application_chat/provider/provierdemo.dart';
import 'package:provider/provider.dart';

class Provider_Home extends StatelessWidget {
  const Provider_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(
        context.watch<ProviderNewDemo>().username,
        
      style: TextStyle(fontSize: 25,
      fontWeight: FontWeight.bold
      ),),),
    );
  }
}