import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Container()),
            Image(
              image: AssetImage("images/delivery_man.png"),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Top ",
                    ),
                    TextSpan(
                      text: "#1",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(text: " Fastest\nDelivery Food For You"),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    text:
                        "Order food and get delivery in the fastest time in town"),
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.width / 100) * 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Container(
                  height: (MediaQuery.of(context).size.width / 100) * 17,
                  width: (MediaQuery.of(context).size.width / 100) * 90,
                  decoration: BoxDecoration(
                      color: Color(0xffed5055),
                      borderRadius: BorderRadius.circular(
                          (MediaQuery.of(context).size.width / 100) * 5)),
                  child: Center(
                      child: Text("Get Started",
                          style: TextStyle(
                            color: Colors.white,
                          )))),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
