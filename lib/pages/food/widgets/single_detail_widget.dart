// DONE single detail widget
import 'package:flutter/material.dart';
import '../../../constants.dart';

class SingleDetail extends StatelessWidget {
  SingleDetail({Key? key, this.title, this.data}) : super(key: key);

  String? title;
  String? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 0 * w, top: 0 * w),
          child: Text(
            title ?? "Calories",
            style: TextStyle(
              fontSize: 36 * w,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 70 * w, top: 38.5 * w),
          child: Text(
            data ?? "750 Calories",
            style: TextStyle(
              fontSize: 40 * w,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
