import 'package:flutter/material.dart';
import 'package:visu_ai/resources/app_colors.dart';

class SlideIndicator extends StatelessWidget {
  const SlideIndicator(
      {super.key, required this.selectedIndex, });

  final bool selectedIndex;
  // final bool currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200), color: Colors.transparent),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: selectedIndex ? 48 : 17,
              height: 6,
              decoration: BoxDecoration(
                color: selectedIndex 
                    ? AppColors.yellow
                    : AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ]),
    );
  }
}
