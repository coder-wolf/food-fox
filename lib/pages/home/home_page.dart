import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/pages/home/widgets/food_type_widget.dart';
import 'package:food_delivery/pages/home/widgets/resturant_widget.dart';
import 'package:food_delivery/pages/home/widgets/search_widget.dart';
import 'package:food_delivery/pages/home/widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xfffcfeff),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                topBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.width * (11 / 100),
                ),
                searchWidget(),
                SizedBox(height: MediaQuery.of(context).size.width * 9 / 100),
                foodTypesListView(),
                resturantWidget(),
                resturantWidget(
                  name: "Pizza Hut",
                  logo: "images/pizza_hut.png",
                ),
                resturantWidget(
                  name: "KFC",
                  logo: "images/kfc.png",
                ),
                resturantWidget(),
                resturantWidget(
                  name: "Pizza Hut",
                  logo: "images/pizza_hut.png",
                ),
                resturantWidget(
                  name: "KFC",
                  logo: "images/kfc.png",
                ),
                resturantWidget(),
                resturantWidget(
                  name: "Pizza Hut",
                  logo: "images/pizza_hut.png",
                ),
                resturantWidget(
                  name: "KFC",
                  logo: "images/kfc.png",
                ),
                resturantWidget(),
                resturantWidget(
                  name: "Pizza Hut",
                  logo: "images/pizza_hut.png",
                ),
                resturantWidget(
                  name: "KFC",
                  logo: "images/kfc.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
