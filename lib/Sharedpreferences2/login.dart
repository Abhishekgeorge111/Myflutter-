

import 'package:flutter/material.dart';
import 'package:flutter_application_chat/Sharedpreferences2/home.dart';
import 'package:flutter_application_chat/main.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPg extends StatelessWidget {
  LoginPg({super.key});

   final usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Login Page",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Lottie.network(
                  "https://lottie.host/b7816957-33d0-474e-95c3-80e52fd91fa1/vc05JNcjlL.json"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  hintText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black, elevation: 10.0),
              onPressed: () {
                gotoHome(context);
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  void gotoHome(BuildContext context) async {
    // creating variables
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == password) {
      final  sharedPred = await SharedPreferences.getInstance();
      sharedPred.setBool(Saved_Key, true);
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Homeprofilepage()));
          } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          content: Text("Username Password doesnot match! "),
        ),


    );
  }
}
}