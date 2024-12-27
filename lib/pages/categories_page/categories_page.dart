import 'package:flutter/material.dart';
import 'package:groccery_app/pages/categories_page/widgets/category_card.dart';
import 'package:groccery_app/pages/categories_page/widgets/seleceted_item_card.dart';
import 'package:groccery_app/pages/categories_page/widgets/selected_item_review_box.dart';
import 'package:groccery_app/shared/offer_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

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
            "Categories",
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
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "All Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CategoryCard(
                          title: "Vegetables &\nFruits",
                          count: 20,
                          bgColor: Color(0xff0057FF),
                          circleColor: Color(0xff0E00AC),
                          borderColor: Color(0xff0094FF),
                        ),
                        CategoryCard(
                          title: "Cooking &\nElements",
                          count: 10,
                          bgColor: Color(0xff00E0FF),
                          circleColor: Color(0xff10C0F8),
                          borderColor: Color(0xff00F0FF),
                        ),
                        CategoryCard(
                          title: "Vegetables &\nFruits",
                          count: 20,
                          bgColor: Color(0xffFF3D00),
                          circleColor: Color(0xffE56C6C),
                          borderColor: Color(0xffFFA800),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CategoryCard(
                          title: "Bites &\nDrinks",
                          count: 20,
                          bgColor: Color(0xff70FF00),
                          circleColor: Color(0xff06FFA5),
                          borderColor: Color(0xff00FF29),
                        ),
                        CategoryCard(
                          title: "Chicken &\nBeef",
                          count: 10,
                          bgColor: Color(0xffFFF500),
                          circleColor: Color(0xffFF9900),
                          borderColor: Color(0xffFFB800),
                        ),
                        CategoryCard(
                          title: "Transport &\nVehicles",
                          count: 20,
                          bgColor: Color(0xffCC00FF),
                          circleColor: Color(0xffDB00FF),
                          borderColor: Color(0xffCC00FF),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Selected Items",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff2C2828).withOpacity(0.12),
                        width: 6,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vegetables",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SelecetedItemCard(
                          itemId: 1,
                          desc:
                              "Vegetables are parts of plants that are consumed by humans..."),
                      SelecetedItemCard(
                          itemId: 2,
                          desc:
                              "Vegetables are parts of plants that are consumed by humans..."),
                      SelecetedItemCard(
                          itemId: 3,
                          desc:
                              "Vegetables are parts of plants that are consumed by humans..."),
                      SelectedItemReviewBox(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
