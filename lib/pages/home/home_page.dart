import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                topBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
