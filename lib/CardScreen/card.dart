import 'dart:developer';

import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () async {
                await showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 350,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [],
                        ),
                      );
                    });
              },
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        body: Center(
          child: SizedBox(
              height: 400,
              child: Card(
                color: Colors.grey.shade300,
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/spotify.jpg',
                        height: 50,
                        width: 50,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(),
                          //icon: Icon(Icons.email),
                          prefixIcon: Icon(Icons.email),
                          prefixIconColor: Colors.black,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        // obscureText: true,
                        readOnly: true,
                        maxLength: 10,

                        decoration: InputDecoration(
                          //label: Text("Password"),
                          labelText: "Password",
                          labelStyle: const TextStyle(),
                          suffixIcon: const Icon(Icons.visibility_off),
                          border: const OutlineInputBorder(),
                          errorBorder: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.green.shade300,
                              margin: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                                bottom: 20,
                              ),
                              behavior: SnackBarBehavior.floating,
                              content: const Text(
                                "logged in",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              action: SnackBarAction(
                                label: "undo",
                                onPressed: () {
                                  log("snack bar action");
                                },
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.check),
                        label: const Text("Sign up"),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
