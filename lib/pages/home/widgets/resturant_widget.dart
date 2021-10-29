import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

// FIX this widget
class resturantWidget extends StatelessWidget {
  resturantWidget({
    Key? key,
    this.name,
    this.logo,
  }) : super(key: key);

  var name = null;
  var logo = null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/resturant');
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: 70 * w, right: 70 * w, top: 25 * w, bottom: 25 * w),
        child: Container(
          width: double.infinity, // checked, no problem maybe
          // width: w * 960,
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
                  padding: EdgeInsets.all(40 * w),
                  child: Image(
                    image: AssetImage(
                        this.logo == null ? "images/dominos.png" : logo),
                  ),
                ),
              ),
              Expanded(
                flex: 35,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 110 * w, bottom: 110 * w, left: 30 * w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text(
                        name == null
                            ? "Dominos Pizza"
                            : name, // TODO add overflow handling, with 1 alowed line, maybe dotted overflow?
                        style: TextStyle(
                          fontSize: 45 * w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Pizza", // TODO replace with variable
                        style: TextStyle(
                          fontSize: 35 * w,
                        ),
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
