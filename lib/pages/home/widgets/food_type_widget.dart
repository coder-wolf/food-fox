import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class FoodType extends StatelessWidget {
  FoodType({Key? key, this.icon, this.foodName}) : super(key: key);

  var icon = null;
  var foodName = null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15 * w,
        right: 15 * w,
      ),
      child: Expanded(
        child: Container(
          height: 140 * w,
          // width: 340 * w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40 * w),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.034),
                  spreadRadius: 7,
                  blurRadius: 14,
                ),
              ]),
          child: Center(
              child: Padding(
            padding: EdgeInsets.only(right: 50 * w),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(30 * w),
                  child: Image(
                    image:
                        AssetImage((icon == null ? "images/pizza.png" : icon)),
                    width: 100 * w,
                    height: 100 * w,
                  ),
                ),
                Text(
                  (foodName == null ? "Pizza" : foodName),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class allFoodTypeButton extends StatelessWidget {
  const allFoodTypeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14 * w,
        right: 14 * w,
      ),
      child: Container(
        height: 140 * w,
        width: 180 * w,
        decoration: BoxDecoration(
          color: Color(0xffed5358),
          borderRadius: BorderRadius.circular(40 * w),
        ),
        child: Center(
          child: Text("All",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}


class foodTypesListView extends StatelessWidget {
  const foodTypesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * (30 / 500),
          // right: 14,
          right: MediaQuery.of(context).size.width * (30 / 500),
          // top: 7,
          top: MediaQuery.of(context).size.width * (20 / 500),
          bottom: MediaQuery.of(context).size.width * (20 / 500),
        ),
        child: Row(
          children: [
            allFoodTypeButton(),
            FoodType(),
            FoodType(
              icon: "images/burger.png",
              foodName: "Burger",
            ),
            FoodType(
              icon: "images/sushi.png",
              foodName: "Sushi",
            ),
            FoodType(
              icon: "images/sandwich.png",
              foodName: "Sandwich",
            ),
          ],
        ),
      ),
    );
  }
}
