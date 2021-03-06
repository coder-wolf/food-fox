import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/pages/cart/cart_page.dart';
import 'package:food_delivery/pages/checkout/confirm_order_page.dart';
import 'package:food_delivery/pages/food/food_page.dart';
import 'package:food_delivery/pages/home/home_page.dart';
import 'package:food_delivery/pages/resturant/resturant_page.dart';
import 'package:food_delivery/pages/welcome/welcome_page.dart';

import 'pages/login/login_page.dart';
import 'pages/login_failed/login_failed_page.dart';
import 'pages/register/register_page.dart';

main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/': (context) => FoodDeliveryApp(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/failed': (context) => LoginFailedPage(),
        '/init': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/resturant': (context) => ResturentScreen(),
        '/food': (context) => FoodScreen(),
        '/cart': (context) => CartScreen(),
        '/confirm': (context) => ConfirmOrderScreen(),
      },
    );
  }
}

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width / 1000;

    return WelcomeScreen();
  }
}
