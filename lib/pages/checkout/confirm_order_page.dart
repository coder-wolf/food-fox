// TODO checkout page --create

import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class ConfirmOrderScreen extends StatelessWidget {
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
            "Order Confirmation",
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
          child: Padding(
            padding: EdgeInsets.only(left: 70 * w, right: 70 * w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Time to Deliver",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40 * w,
                  ),
                ),
                SizedBox(
                  height: 90 * w,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * w),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
