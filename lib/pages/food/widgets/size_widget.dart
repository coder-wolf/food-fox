// DONE size choice widget

import 'package:flutter/material.dart';
import '../../../constants.dart';

class SizeWidget extends StatelessWidget {
  SizeWidget({
    this.isSelected = false,
    this.size,
    Key? key,
  }) : super(key: key);

  bool isSelected;
  String? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO add functionaliy
      },
      child: Padding(
        padding: EdgeInsets.only(right: w * 15, left: 15 * w),
        child: Container(
          height: 100 * w,
          width: 100 * w,
          decoration: BoxDecoration(
            color: isSelected == false
                ? Colors.grey.withOpacity(0.15)
                : Colors.red,
            borderRadius: BorderRadius.circular(26 * w),
          ),
          child: Center(
            child: Text(
              size ?? "S",
              style: TextStyle(
                color: isSelected == false ? Colors.black : Colors.white,
                fontSize: 35 * w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
