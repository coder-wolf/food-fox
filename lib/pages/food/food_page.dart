// working food page -- create

import 'package:flutter/material.dart';

import '../../constants.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // DONE topbar
        // titleSpacing: 0,
        // automaticallyImplyLeading: false,
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
              ],
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 60 * w,
              ),
            ),
          ),
        ),
        title: Center(
          child: Text(
            "Pepperoni Pizza",
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
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xfffcfeff),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 70 * w, right: 70 * w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // doing text
                Center(
                  child: Text(
                    "Salami, chilli papers, tomatoes,\n oregano, basil",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 40 * w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 90 * w,
                ),
                Text(
                  "\$8.50",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 60 * w,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 40 * w,
                ),
                SingleInfo(title: "Calories", data: "750 calories"),
                SingleInfo(title: "Weight", data: "450 gm"),
                SingleInfo(title: "Delivery", data: "45 min"),
                // TODO size
                // TODO count
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SingleInfo extends StatelessWidget {
  SingleInfo({Key? key, this.title, this.data}) : super(key: key);

  String? title;
  String? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 50 * w),
          child: Text(
            title == null ? "Calories" : title.toString(),
            style: TextStyle(
              fontSize: 47 * w,
              color: Colors.grey[600],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            data == null ? "750 Calories" : data.toString(),
            style: TextStyle(
              fontSize: 45 * w,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
