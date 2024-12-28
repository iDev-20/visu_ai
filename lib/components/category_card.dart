
import 'package:flutter/material.dart';
import 'package:visu_ai/resources/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String title;

  const CategoryCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.subtleGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.54, vertical: 4.81),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 9.26,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
