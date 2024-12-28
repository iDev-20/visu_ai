import 'package:flutter/material.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key, required this.child, required this.children});

  final Widget child;
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBkack,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  child,
                  Row(
                    children: [
                      const Icon(
                        Icons.notifications_none_sharp,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 14),
                      AppImages.svgBookmark,
                      const SizedBox(width: 10),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: const BoxDecoration(
                            color: AppColors.subtleGrey,
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [children],
            ),
          ],
        ),
      ),
    );
  }
}
