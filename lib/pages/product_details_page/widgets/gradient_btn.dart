import 'package:flutter/material.dart';

class GradientBtn extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final double width;
  final double height;
  final String text;

  const GradientBtn({
    super.key,
    required this.firstColor,
    required this.secondColor,
    required this.width,
    required this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secondColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
