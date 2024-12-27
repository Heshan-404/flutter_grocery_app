import 'package:flutter/material.dart';

Widget leadingWidget = Container(
  width: 30,
  height: 30,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    color: const Color(0xff9E00FF),
  ),
  child: const Center(
    child: Icon(
      Icons.location_on,
      color: Colors.white,
    ),
  ),
);

Widget titleWidget = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
        fontSize: 16,
        color: const Color(0xff3B3636).withOpacity(0.47),
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    const Text(
      "92 High Street , London",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    )
  ],
);

List<Widget>? actionList = [
  Container(
    height: 100,
    width: 57,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: const Color(0xffFF9900).withOpacity(0.52),
    ),
    child: const Icon(
      Icons.shopping_bag_outlined,
      color: Colors.white,
    ),
  )
];
