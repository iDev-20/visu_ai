import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/pages/create_image_screen.dart';
import 'package:visu_ai/resources/app_colors.dart';

class ImageOptions extends StatelessWidget {
  const ImageOptions({super.key, required this.icon, required this.option});

  final SvgPicture icon;
  final String option;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigation.navigateToScreen(
            context: context, screen: const CreateImageScreen());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7.2),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2.0, color: AppColors.secondBlack),
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 2),
            Text(
              option,
              style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 11.68,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
