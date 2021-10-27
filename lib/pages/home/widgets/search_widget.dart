import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * (30 / 500),
          right: MediaQuery.of(context).size.width * (30 / 500)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find your",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize:
                      75 * w, //MediaQuery.of(context).size.width * (30 / 500),
                ),
              ),
              Text(
                "favourite foods",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize:
                      75 * w, //MediaQuery.of(context).size.width * (30 / 500),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * (12.5 / 100),
            height: MediaQuery.of(context).size.width * (12.5 / 100),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width * (3 / 100)),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 20,
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.search_rounded,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
