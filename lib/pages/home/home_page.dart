import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/model/resturant.dart';
import 'package:food_delivery/pages/home/widgets/food_type_widget.dart';
import 'package:food_delivery/pages/home/widgets/resturant_widget.dart';
import 'package:food_delivery/pages/home/widgets/search_widget.dart';
import 'package:food_delivery/pages/home/widgets/top_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var listOfResturants = [];

  initState() {
    var response = http
        .get(Uri.parse("https://food-del-app.herokuapp.com/restaurants"))
        .then((response) {
      setState(() {
        listOfResturants = (json.jsonDecode(response.body) as List)
            .map((data) => Resturant.fromJson(data))
            .toList();
      });
      for (var i = 0; i < listOfResturants.length; i++) {
        print(listOfResturants[i].name);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xfffcfeff),
          ),
          SafeArea(
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
                  Column(
                    // builder for resturants
                    children: [
                      for (var i = 0; i < listOfResturants.length; i++)
                        resturantWidget(resturant: listOfResturants[i]),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
