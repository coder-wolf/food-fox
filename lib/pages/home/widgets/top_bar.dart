import 'package:flutter/material.dart';

class topBar extends StatelessWidget {
  const topBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 7),
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
                      color: Colors.grey,
                      fontSize: 21,
                    )),
                TextSpan(
                    text: "John",
                    /* TODO change with variable */
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: (MediaQuery.of(context).size.width / 200) * 13,
            foregroundImage: AssetImage("images/avatar.png"),
          ),
        ],
      ),
    );
  }
}
