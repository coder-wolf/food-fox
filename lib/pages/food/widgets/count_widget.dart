import 'package:flutter/material.dart';
import '../../../constants.dart';

class CountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40 * w),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Decrement(),
            Padding(
              padding: EdgeInsets.only(left: 15 * w, right: 15 * w),
              child: Text("2"),
            ),
            Increment(),
          ],
        ),
      ),
    );
  }
}

class Decrement extends StatelessWidget {
  Decrement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO add functionaliy
      },
      child: Padding(
        padding: EdgeInsets.only(right: w * 15, left: w * 15),
        child: Container(
          height: 90 * w,
          width: 90 * w,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.15),
            borderRadius: BorderRadius.circular(26 * w),
          ),
          child: Center(
            child: Text(
              "-",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35 * w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Increment extends StatelessWidget {
  Increment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO add functionaliy
      },
      child: Padding(
        padding: EdgeInsets.only(right: w * 0, left: 15 * w),
        child: Container(
          height: 90 * w,
          width: 90 * w,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(26 * w),
          ),
          child: Center(
            child: Text(
              "+",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35 * w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
