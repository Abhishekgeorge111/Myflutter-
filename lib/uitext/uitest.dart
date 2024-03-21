import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_chat/textfield/utils/appcolor.dart';
import 'package:flutter_application_chat/uitext/homescreen%20.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class UiLogin extends StatefulWidget {
  const UiLogin({super.key});

  @override
  State<UiLogin> createState() => _UiLoginState();
}

class _UiLoginState extends State<UiLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  bool _isVisible = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                Text(
                  "sign up",
                  style: GoogleFonts.adventPro(
                    fontSize: 35,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Gap(5),
                Text(
                  'Already have a acconunt ? Sign in',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Gap(10),
                Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill Name field';
                    }
                    return null;
                  },
                  controller: usernamecontroller,
                  style: TextStyle(color: AppColors.textColor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Gap(10),

                Text(
                  'Email ID',
                  style: TextStyle(
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill  Email field';
                    }
                    return null;
                  },
                  controller: emailController,
                  style: TextStyle(color: AppColors.textColor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Gap(20),
                Text(
                  'confirm password',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill password field';
                    }
                    if (value != passwordController.text) {
                      return 'password is not match';
                    }
                    return null;
                  },
                  controller: confirmpasswordcontroller,
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),

                // login button
                const Gap(30),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        String username = usernamecontroller.text;
                        String email = emailController.text;
                        String password = passwordController.text;
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeUi(username: username,email: email,),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('SIGN IN '),
                        ));
                      }
                      usernamecontroller.clear();
                      emailController.clear();
                      passwordController.clear();
                      confirmpasswordcontroller.clear();
                    },
                    child: Center(
                      child: Text(
                        "register  ",
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: Size(250, 50),
                      backgroundColor: Colors.blue[800],
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
