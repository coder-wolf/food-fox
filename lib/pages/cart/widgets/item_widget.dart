// TODO item widget
// FoodWidget => copied and slightly modified from original
// <== resturant/widgets/food_widget.dart

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../food/widgets/count_widget.dart';

class ItemWidget extends StatelessWidget {
  var name;
  var logo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/food');
      },
      child: Padding(
        padding: EdgeInsets.only(
            top: 25 * w, bottom: 25 * w, left: 50 * w, right: 50 * w),
        child: Container(
          width: double.infinity,
          height: 370 * w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50 * w),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.04),
                blurRadius: 900 * w,
                spreadRadius: 500 * w,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 23,
                child: Padding(
                  padding: EdgeInsets.all(40 * w),
                  child: Image(
                    image: AssetImage(this.logo == null
                        ? "images/pepperoni_pizza.png"
                        : logo),
                  ),
                ),
              ),
              Expanded(
                flex: 37,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 35 * w, bottom: 35 * w, left: 30 * w, right: 33 * w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name == null
                            ? "Pepperoni Pizza"
                            : name, // TODO add overflow handling, with 1 alowed line, maybe dotted overflow?
                        style: TextStyle(
                          fontSize: 45 * w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Mixed Pizza", // TODO replace with variable
                        style: TextStyle(
                            fontSize: 35 * w,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$8.50",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50 * w),
                          ),
                          CountWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
