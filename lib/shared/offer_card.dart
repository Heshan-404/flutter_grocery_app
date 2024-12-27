import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF2E4CE),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xffFF9900),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Get 100% off on Groceries Plus T&C Apply",
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xffFF9900),
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Sped payments with master and visa",
            style: TextStyle(
                fontSize: 12,
                color: const Color(0xff3B3636).withOpacity(.47),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
