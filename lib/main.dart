import 'package:flutter/material.dart';
import 'package:groccery_app/pages/categories_page/categories_page.dart';
import 'package:groccery_app/pages/home_page/home_page.dart';
import 'package:groccery_app/pages/product_details_page/product_details.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: ProductDetailsPage(),
    );
  }
}
