import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/resources/app_colors.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem(
      {super.key,
      required this.title,
      required this.leadingImage,
      required this.onTap,
      required this.isSelected,
      this.visible = true,
      this.enableTap = true});

  final String title;
  final Widget leadingImage;
  final VoidCallback onTap;
  final bool isSelected;
  final bool visible;
  final bool enableTap;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: InkWell(
          onTap: enableTap
              ? () {
                  Navigation.back(context: context);
                  if (isSelected == false) {
                    Navigation.back(context: context);
                    onTap.call();
                  }
                }
              : null,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF292f08) : null,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 18, width: 18, child: leadingImage),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SmallDrawerMenuItem extends StatelessWidget {
  const SmallDrawerMenuItem({
    super.key,
    required this.title,
    required this.titleColor,
    required this.leadingImage,
    required this.onTap,
  });

  final String title;
  final SvgPicture leadingImage;
  final Color titleColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: Row(
          children: [
            leadingImage,
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, color: titleColor),
            )
          ],
        ),
      ),
    );
  }
}
