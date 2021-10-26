import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/home_page.dart';
import 'package:food_delivery/pages/welcome/welcome_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        
      },
    );
  }
}
