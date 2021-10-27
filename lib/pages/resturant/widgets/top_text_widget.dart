// DOING create top text widget

import 'package:flutter/material.dart';
import '../../../constants.dart';

class TopTextWidget extends StatelessWidget {
  const TopTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 90 * w),
        Text("Choose what you",
            style: TextStyle(
              fontSize: 57 * w,
            )),
        Text(
          "want to eat today",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 57 * w,
          ),
        ),
        SizedBox(height: 90 * w),
      ],
    );
  }
}
