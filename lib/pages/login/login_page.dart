import 'package:flutter/material.dart';
import 'package:food_delivery/services/login.dart';

import '../../constants.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffFEFFFF),
        height: double.infinity,
        child: Column(children: [
          Spacer(flex: 2),
          Image(
            image: AssetImage("images/foodfox.png"),
            width: 300 * w,
          ),
          Spacer(flex: 2),
          // textfield for email
          Padding(
            padding: EdgeInsets.only(left: 40 * w, right: 40 * w),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(w * 50),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70 * w,
          ),
          // textfield for password
          Padding(
            padding: EdgeInsets.only(left: 40 * w, right: 40 * w),
            child: TextField(
              controller: passwordController,
              obscureText: true, // TODO change to true
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(w * 50),
                ),
              ),
            ),
          ),
          Spacer(flex: 5),
          // button for login
          Padding(
            // padding: const EdgeInsets.all(8.0),
            padding: EdgeInsets.only(left: 200 * w, right: 200 * w),
            child: Container(
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  login(emailController.text, passwordController.text);
                  // if logged in.
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/home", (route) => false);
                },
                color: const Color(0xffDB5C5A),
                padding: EdgeInsets.symmetric(vertical: 45 * w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80 * w),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              // register button
            ),
          ),
          SizedBox(
            height: w * 300,
          ),
        ]),
      ),
    );
  }
}
