// DONE create top text widget

import 'package:flutter/material.dart';
import '../../../constants.dart';

class TopTextWidget extends StatelessWidget {
  const TopTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 60 * w),
        Text("Choose what you",
            style: TextStyle(
              fontSize: 62 * w,
            )),
        Text(
          "want to eat today",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60.5 * w,
          ),
        ),
        SizedBox(height: 80 * w),
      ],
    );
  }
}
