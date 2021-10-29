import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/pages/cart/cart_page.dart';
import 'package:food_delivery/pages/checkout/confirm_order_page.dart';
import 'package:food_delivery/pages/food/food_page.dart';
import 'package:food_delivery/pages/home/home_page.dart';
import 'package:food_delivery/pages/resturant/resturant_page.dart';
import 'package:food_delivery/pages/welcome/welcome_page.dart';

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
      // home: WelcomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => FoodDeliveryApp(),
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
