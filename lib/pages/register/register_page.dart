import 'package:flutter/material.dart';
import 'package:food_delivery/services/login.dart';
import 'package:food_delivery/services/register.dart';
import '../../constants.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var regStatus = false;
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
          SizedBox(height: 43 * w),
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
              controller: fnameController,
              decoration: InputDecoration(
                hintText: 'Name',
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
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Phone',
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
              obscureText: true,
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
          SizedBox(
            height: 70 * w,
          ),
          // textfield for password

          Padding(
            padding: EdgeInsets.only(left: 40 * w, right: 40 * w),
            child: TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
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
                onPressed: () async {
                  var regStatus = await register(
                    fnameController.text,
                    emailController.text,
                    phoneController.text,
                    passwordController.text,
                    confirmPasswordController.text,
                  );
                  setState(() {
                    this.regStatus = regStatus;
                  });
                  if (regStatus) {
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
                  'Register',
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
