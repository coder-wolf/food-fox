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
  var loginStatus = false;
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
        width: double.infinity,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
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
          Padding(
            // padding: EdgeInsets.all(w * 20),
            padding: EdgeInsets.only(left: 200 * w, right: 200 * w),
            child: Container(
              width: double.infinity,
              child: MaterialButton(
                onPressed: () async {
                  var loginStatus = await login(
                      emailController.text, passwordController.text);
                  setState(() {
                    this.loginStatus = loginStatus;
                  });
                  if (loginStatus) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/home", (route) => false);
                  } else {
                    Navigator.pushNamed(context, "/failed");
                  }
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
            height: 55 * w,
          ),
          // button for register
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/register");
            },
            child: Container(
              child: Center(child: Text("Register")),
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
