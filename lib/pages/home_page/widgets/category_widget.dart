import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String desc;
  final Color secondBgColor;
  final Color mainTextColor;
  final Color subTextColor;

  const CategoryWidget(
      {super.key,
      required this.bgColor,
      required this.title,
      required this.desc,
      required this.secondBgColor,
      required this.mainTextColor,
      required this.subTextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: mainTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              desc,
              style: TextStyle(color: subTextColor, fontSize: 12),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: secondBgColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
