import 'widgets/resturant_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

import 'widgets/top_text_widget.dart';

// TODO finish resturant page

class ResturentScreen extends StatelessWidget {
  var name = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xfffcfeff),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 70 * w, right: 70 * w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopTextWidget(),
                  ResturantNameWidget(name: name),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
