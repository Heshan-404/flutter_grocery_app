import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final int count;
  final Color bgColor;
  final Color circleColor;
  final Color borderColor;

  const CategoryCard(
      {super.key,
      required this.title,
      required this.count,
      required this.bgColor,
      required this.circleColor,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 10,
      ),
      height: 90,
      width: 170,
      decoration: BoxDecoration(
        color: bgColor.withOpacity(.29),
        border: Border.all(
          color: borderColor,
          width: 1.2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3B3636).withOpacity(0.91),
                ),
              ),
              Text(
                "$count+ more ...",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff3B3636).withOpacity(0.91),
                ),
              )
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: circleColor,
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ],
      ),
    );
  }
}
