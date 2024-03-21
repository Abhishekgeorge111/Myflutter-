import 'package:flutter/material.dart';

class ProviderNewDemo extends ChangeNotifier{
String username;

ProviderNewDemo({this.username = 'provider'});

void changeUserName({required String newusername}) async{
  username = newusername;
  notifyListeners();
}

 Widget widget (){ 
  return ElevatedButton(
    onPressed: (){},
     child: const Text(
                            "Sign up",
                            style: TextStyle(color: Colors.green),
                          ),
                        );
                        


 }
}