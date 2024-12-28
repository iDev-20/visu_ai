import 'package:flutter/material.dart';
import 'package:visu_ai/components/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
              height: height,
              width: width,
              child: const CategoryCard(title: 'Surealisme')),
          SizedBox(
              height: height,
              width: width,
              child: const CategoryCard(title: 'Animals')),
          SizedBox(
              height: height,
              width: width,
              child: const CategoryCard(title: 'Humanisme')),
          SizedBox(
              height: height,
              width: width,
              child: const CategoryCard(title: 'Geography')),
        ],
      ),
    );
  }
}
