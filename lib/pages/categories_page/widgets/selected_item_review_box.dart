import 'package:flutter/material.dart';

class SelectedItemReviewBox extends StatelessWidget {
  const SelectedItemReviewBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffCACACA).withOpacity(0.31),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.star,
            size: 32,
            color: Color(0xffFFE500),
          ),
          Icon(
            Icons.star,
            size: 32,
            color: Color(0xffFFE500),
          ),
          Icon(
            Icons.star,
            size: 32,
            color: Color(0xffFFE500),
          ),
          Icon(
            Icons.star,
            size: 32,
            color: Color(0xffFFE500),
          ),
          Icon(
            Icons.star,
            size: 32,
            color: Color(0xff3B3636).withOpacity(0.75),
          ),
        ],
      ),
    );
  }
}
