// DONE create foodWidget

import 'package:flutter/material.dart';
import 'package:food_delivery/pages/food/food_page.dart';
import '../../../constants.dart';

class FoodWidget extends StatelessWidget {
  var foodObject;
  // constructor
  FoodWidget(this.foodObject);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/food');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodPage(foodObject),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(top: 25 * w, bottom: 25 * w),
        child: Container(
          width: double.infinity,
          height: 430 * w,
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
                flex: 30,
                child: Padding(
                    padding: EdgeInsets.all(52 * w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(33 * w),
                      ),
                      child: Image(
                        image: NetworkImage(foodObject.imageLink),
                      ),
                    )),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "4.5 ", // TODO replace with variable
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: 48 * w,
                                ),
                              ]),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 49 * w,
                          ),
                        ],
                      ),
                      Text(
                        foodObject.name,
                        // TODO add overflow handling, with 1 alowed line, maybe dotted overflow?
                        style: TextStyle(
                          fontSize: 45 * w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Mixed Pizza",
                        style: TextStyle(
                            fontSize: 35 * w,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$" +
                                foodObject.foodMajorCategory[0].price, //8.50",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50 * w),
                          ),
                          Container(
                            width: 85 * w,
                            height: 85 * w,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25 * w)),
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40 * w,
                            )),
                          ),
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
