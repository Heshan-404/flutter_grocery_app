import 'package:flutter/material.dart';

class SelecetedItemCard extends StatelessWidget {
  final int itemId;
  final String desc;

  const SelecetedItemCard(
      {super.key, required this.itemId, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10, bottom: 5),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xffFFE500),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                itemId.toString(),
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              desc,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
