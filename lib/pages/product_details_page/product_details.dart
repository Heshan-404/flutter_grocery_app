import 'package:flutter/material.dart';
import 'package:groccery_app/pages/product_details_page/widgets/gradient_btn.dart';
import 'package:groccery_app/pages/product_details_page/widgets/price_list_row.dart';
import 'package:groccery_app/pages/product_details_page/widgets/title_desc_card.dart';
import 'package:groccery_app/shared/offer_card.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Colors.black,
            size: 25,
          ),
          title: const Text(
            "Product Details",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OfferCard(),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 50),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFF500).withOpacity(.29),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 200,
                      color: const Color(0xff333333).withOpacity(.75),
                    ),
                  ),
                ),
                const TitleDescCard(
                    title: "Product Information",
                    desc:
                        "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish."),
                const TitleDescCard(
                    title: "Product Information",
                    desc:
                        "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish."),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Price List",
                  style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PriceListRow(
                    item_no: 1, item_name: "Green peas ", item_weight: "100g"),
                const PriceListRow(
                    item_no: 2,
                    item_name: "Brussels sprouts.",
                    item_weight: "100g"),
                const PriceListRow(
                    item_no: 3, item_name: "Broccoli", item_weight: "100g"),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff3B3636),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "230\$",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff9E00FF),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientBtn(
                      width: 279,
                      height: 45,
                      firstColor: Color(0xffCC00FF),
                      secondColor: Color(0xffFFE500),
                      text: "Proceed To Pay",
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
