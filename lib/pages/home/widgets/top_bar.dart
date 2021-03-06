import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class topBar extends StatelessWidget {
  const topBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * (30 / 500),
        // right: 14,
        right: MediaQuery.of(context).size.width * (30 / 500),
        // top: 7,
        top: MediaQuery.of(context).size.width * (20 / 500),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Good morning, ",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontSize: 68 * w,
                    )),
                TextSpan(
                    text: "John",
                    /* TODO change with variable */
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      // fontSize: 21,
                      fontSize: 68 * w,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: (MediaQuery.of(context).size.width / 200) * 12.6,
            foregroundImage: AssetImage("images/avatar.png"),
          ),
        ],
      ),
    );
  }
}
