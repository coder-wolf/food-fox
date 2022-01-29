// TODO cart page -- create
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart/widgets/item_widget.dart';
import '../../constants.dart';

class CartScreen extends StatefulWidget {
  var cartObject;
  CartScreen({required this.cartObject});
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.yellow[900],
              ),
              Text(" Shopping Cart",
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfffcfeff),
        shadowColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xfffcfeff),
        child: SafeArea(
          child: Stack(
            children: [
              // 1. items list
              SingleChildScrollView(
                child: Column(
                  children: [
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                    SizedBox(
                      height: 430 * w,
                    )
                  ],
                ),
              ),
              // 2. total price + checkout button
              Column(
                children: [
                  Spacer(),
                  Container(
                    height: 380 * w,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.09),
                        blurRadius: 80 * w,
                        spreadRadius: 25 * w,
                      )
                    ]),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 70 * w,
                          right: 70 * w,
                          bottom: 110 * w,
                          top: 110 * w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Total Prize",
                                style: TextStyle(
                                  fontSize: 35 * w,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$40.50",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 73 * w,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/confirm");
                            },
                            child: Container(
                              width: 450 * w,
                              height: 220 * w,
                              decoration: BoxDecoration(
                                  color: Colors.red[400],
                                  borderRadius: BorderRadius.circular(48 * w),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blueGrey.withOpacity(0.1),
                                      spreadRadius: 100 * w,
                                      blurRadius: 38 * w,
                                    )
                                  ]),
                              child: Center(
                                child: Text(
                                  "Checkout",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 37 * w,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // button
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
