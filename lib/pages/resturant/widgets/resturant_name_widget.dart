import 'package:flutter/material.dart';
import '../../../constants.dart';

// DONE create resturant name widget

class ResturantNameWidget extends StatelessWidget {
  ResturantNameWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  var name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25 * w),
      child: Container(
        width: double.infinity,
        height: 170 * w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25 * w),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.034),
              blurRadius: 30 * w,
              spreadRadius: 30 * w,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  // padding: EdgeInsets.only(top: 15 * w, bottom: 15 * w),
                  padding: EdgeInsets.all(25 * w),
                  child: Image(image: AssetImage("images/dominos.png")),
                )),
            Expanded(
              flex: 7,
              child: Center(
                child: Text(
                  name == null ? "Dominos Pizza" : name,
                  style: TextStyle(
                    fontSize: 45 * w,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
