import 'package:flutter/material.dart';
import 'package:groccery_app/pages/home_page/widgets/app_bar_widgets.dart';
import 'package:groccery_app/pages/home_page/widgets/category_widget.dart';
import 'package:groccery_app/pages/home_page/widgets/custom_search_bar.dart';
import 'package:groccery_app/pages/home_page/widgets/shop_item_iwdget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scaffold(
            appBar: AppBar(
              leading: leadingWidget,
              title: titleWidget,
              actions: actionList,
            ),
            body: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSearchBar(),
                  Text(
                    "Explore Categories",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryWidget(
                        title: "Vegetables",
                        desc:
                            "Vegetables are parts of plants that are consumed by humans...",
                        bgColor: Color(0xff9E00FF),
                        secondBgColor: Color(0xff06FFA5),
                        mainTextColor: Color(0xffFFFFFF),
                        subTextColor: Color(0xffC3C3C3),
                      ),
                      CategoryWidget(
                        title: "Fish & Meat",
                        desc:
                            "Fish is the flesh of an animal used for food, and by that definition...",
                        bgColor: Color(0xff9E00FF),
                        secondBgColor: Color(0xff06FFA5),
                        mainTextColor: Color(0xffFFFFFF),
                        subTextColor: Color(0xffC3C3C3),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryWidget(
                        title: "Vegetables",
                        desc:
                            "Vegetables are parts of plants that are consumed by humans...",
                        bgColor: Color(0xffFFE500),
                        secondBgColor: Color(0xffFF9900),
                        mainTextColor: Color(0xff3B3636),
                        subTextColor: Color(0xff686060),
                      ),
                      CategoryWidget(
                        title: "Fish & Meat",
                        desc:
                            "Fish is the flesh of an animal used for food, and by that definition...",
                        bgColor: Color(0xffFFE500),
                        secondBgColor: Color(0xffFF9900),
                        mainTextColor: Color(0xff3B3636),
                        subTextColor: Color(0xff686060),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "For Sale and Low Cost",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShopItemIwdget(
                          title: "Washing Liquid",
                          sizeMl: "230 ml",
                          price: "230 \$",
                          secondBgColor: Color(0xff06FFA5),
                          bgColor: Color(0xff9E00FF),
                        ),
                        ShopItemIwdget(
                          title: "Washing Liquid",
                          sizeMl: "230 ml",
                          price: "230 \$",
                          secondBgColor: Color(0xff06FFA5),
                          bgColor: Color(0xff9E00FF),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShopItemIwdget(
                          title: "Washing Liquid",
                          sizeMl: "230 ml",
                          price: "230 \$",
                          secondBgColor: Color(0xff06FFA5),
                          bgColor: Color(0xff9E00FF),
                        ),
                        ShopItemIwdget(
                          title: "Washing Liquid",
                          sizeMl: "230 ml",
                          price: "230 \$",
                          secondBgColor: Color(0xff06FFA5),
                          bgColor: Color(0xff9E00FF),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
