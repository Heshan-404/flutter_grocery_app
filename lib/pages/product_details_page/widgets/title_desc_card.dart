import 'package:flutter/material.dart';

class TitleDescCard extends StatelessWidget {
  final String title;
  final String desc;

  const TitleDescCard({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xff3B3636),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            desc,
            style: TextStyle(
              color: Color(0xff3B3636).withOpacity(0.75),
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          
        ],
      ),
    );
  }
}
