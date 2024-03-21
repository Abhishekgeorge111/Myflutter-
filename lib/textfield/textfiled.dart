import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_chat/textfield/utils/appcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { 
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isVisible = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenSize =  MediaQuery.of(context).size;
    print('build');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 15,
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(30),
                Text("sign up",
                style: GoogleFonts.adventPro(
                fontSize: 35,
                color: AppColors.textColor,
                fontWeight: FontWeight.w800,
                ),
                ),
                const Gap(10),
                Text('Email',
                style: TextStyle(
                  color: AppColors.textColor,           
                  ),
                ),
                SizedBox(
                  height: 5,
                ) ,
                TextFormField(
                   validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill password field';
                    }
                    return null;
                  },
                   controller: emailController,
                  style: TextStyle(color: AppColors.textColor),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const Gap(10),
                Text(
                  "Password",
                  style: TextStyle(
                    color: AppColors.textColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill password field';
                    }
                    return null;
                  },
                  controller: passwordController,
                  obscureText: !_isVisible,
                  style: TextStyle(color: AppColors.textColor),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      icon: !_isVisible
                          ? Icon(
                              Icons.visibility_off,
                              color: AppColors.textColor,
                            )
                          : Icon(
                              Icons.visibility,
                              color: AppColors.textColor,
                            ),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
                // login button
                const Gap(20),
                GestureDetector(
                  onTap: () {
                    String email = emailController.text;
                    String password = passwordController.text;
                    if (formKey.currentState!.validate()) {
                      log(email);
                      log(password);
                    } else {
                      const snackBar = SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.white,
                        content: Text(
                          "please fill input fields...",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                    // field clear
                    emailController.text = '';
                    passwordController.clear();
                  },
                  child: Container(
                    height: 70,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      color: AppColors.bottonColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}