import 'package:flutter/material.dart';
import 'package:visu_ai/resources/app_colors.dart';

class TabItem extends StatelessWidget {
  final String title;
  const TabItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      //text: title,
      iconMargin: const EdgeInsets.all(8),
      //height: 27,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.yellow,
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.darkBkack,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
