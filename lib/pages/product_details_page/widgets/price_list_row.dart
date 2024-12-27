import 'package:flutter/material.dart';

class PriceListRow extends StatelessWidget {
  final int item_no;
  final String item_name;
  final String item_weight;

  const PriceListRow({
    super.key,
    required this.item_no,
    required this.item_name,
    required this.item_weight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFE500),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      item_no.toString(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    item_name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xff3B3636).withOpacity(.75),
                    ),
                  ),
                ),
                Container(
                  width: 106,
                  height: 29,
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9).withOpacity(.4),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item_weight,
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xff3B3636).withOpacity(.75),
                          ),
                        ),
                        const Icon(
                          Icons.add_circle_outline,
                          size: 20,
                        ),
                        const Icon(
                          Icons.remove_circle_outline,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 10,
              color: Colors.black.withOpacity(.13),
            )
          ],
        ),
      ),
    );
  }
}
