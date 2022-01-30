// working food page -- create

import 'package:flutter/material.dart';
import 'package:food_delivery/model/food.dart';
import 'package:food_delivery/pages/food/widgets/count_widget.dart';

import '../../constants.dart';
import 'widgets/single_detail_widget.dart';
import 'widgets/size_widget.dart';

class FoodPage extends StatelessWidget {
  FoodPage(this.foodObject);

  Food foodObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // DONE topbar
        backgroundColor: Color(0xfffcfeff),
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.all(18 * w),
          child: Container(
            width: 120 * w,
            height: 120 * w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width * (3 / 100)),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.05),
                  spreadRadius: 2 * w,
                  blurRadius: 20 * w,
                ),
              ], // TODO fix the shadow, make it lighter.
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: w * 25, right: w * 25),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.black,
                    size: 60 * w,
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Center(
          child: Text(
            foodObject.name!, //"Pepperoni Pizza",
            style: TextStyle(
              color: Colors.black,
              fontSize: 45 * w,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(18 * w),
            // padding: EdgeInsets.only(
            //     top: 18 * w, left: 18 * w, right: 50 * w, bottom: 18 * w),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/cart");
              },
              child: Container(
                width: 120 * w,
                height: 120 * w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * (3 / 100)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.05),
                      spreadRadius: 2 * w,
                      blurRadius: 20 * w,
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 60 * w,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xfffcfeff),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                right: -180 * w,
                top: 320 * w,
                child: SizedBox(
                  width: 730 * w,
                  height: 730 * w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                            MediaQuery.of(context).size.width * (50 / 100)),
                        topLeft: Radius.circular(
                            MediaQuery.of(context).size.width * (15 / 100))),
                    child: Image(
                      image: NetworkImage(foodObject.imageLink!),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 70 * w, left: 70 * w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 37 * w),
                    Center(
                      child: Text(
                        foodObject
                            .foodMajorCategory![0] // TODO replace 0 with index
                            .ingredients!, //"Salami, chilli papers, tomatoes,\n oregano, basil",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 40 * w,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 130 * w,
                    ),
                    Text(
                      "\$" + foodObject.price!,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 73 * w,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 100 * w,
                    ),
                    SingleDetail(
                        title: "Calories",
                        data: foodObject.foodMajorCategory![0]
                            .calories // TODO replace 0 with index
                        ),
                    SingleDetail(
                        title: "Weight",
                        data: foodObject.foodMajorCategory[0].weight),
                    SingleDetail(
                        title: "Delivery",
                        data: "45 min"), // TODO replace fixed value
                    SizedBox(
                      height: 60 * w,
                    ),
                    Row(
                      children: [
                        SizeWidget(
                          isSelected: true,
                        ),
                        SizeWidget(
                          size: "M",
                        ),
                        SizeWidget(
                          size: "L",
                        ),
                      ],
                    ),
                    CountWidget(),
                    Padding(
                      padding: EdgeInsets.only(top: 150 * w),
                      child: GestureDetector(
                        onTap: () {
                          // TODO nevigate to cart?
                          // TODO add to cart
                          // TODO show go to cart button?
                        },
                        child: Container(
                          width: double.infinity,
                          height: 140 * w,
                          decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius: BorderRadius.circular(35 * w)),
                          child: Center(
                            child: Text(
                              "Add to cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
