import 'package:flutter/material.dart';

class ShopItemIwdget extends StatelessWidget {
  final Color bgColor;
  final Color secondBgColor;
  final String title;
  final String sizeMl;
  final String price;

  const ShopItemIwdget(
      {super.key,
      required this.bgColor,
      required this.secondBgColor,
      required this.title,
      required this.sizeMl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: secondBgColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      sizeMl,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xffFFE500),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Icon(
                  Icons.add_circle_outline_sharp,
                  size: 40,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
