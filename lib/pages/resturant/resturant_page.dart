import 'dart:convert' as json;

import 'package:food_delivery/model/food.dart';
import 'package:food_delivery/pages/resturant/widgets/food_widget.dart';
import 'widgets/resturant_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:http/http.dart' as http;
import 'widgets/top_text_widget.dart';

// TODO finish resturant page

class ResturantPage extends StatefulWidget {
  var resturant;
  static const routeName = "/resturant";

  ResturantPage(this.resturant);

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  var name = null;
  // TODO // finish fetching food list properly
  var foodList = [];
  var url;
  @override
  initState() {
    url =
        "https://food-del-app.herokuapp.com/restaurants/" + widget.resturant.id;
    var response = http.get(Uri.parse(url)).then((response) {
      setState(() {
        foodList = (json.jsonDecode(response.body) as List)
            .map((data) => Food.fromJson(data))
            .toList();
      });
      print(foodList);
      print("https://food-del-app.herokuapp.com/restaurants/" +
          widget.resturant.id);
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xfffcfeff),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 70 * w, right: 70 * w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopTextWidget(),
                  ResturantNameWidget(resturant: widget.resturant),
                  Column(
                    children: [
                      // TODO finish constructing the food widget list
                      for (int i = 0; i < foodList.length; i++)
                        FoodWidget(foodList[i]),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
