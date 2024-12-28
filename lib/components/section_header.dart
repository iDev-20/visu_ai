import 'package:flutter/material.dart';
import 'package:visu_ai/resources/app_colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(
      {super.key, required this.header, required this.subHeader, this.onTap});

  final String header;
  final String subHeader;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          header,
          style: const TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            subHeader,
            style: const TextStyle(
                color: AppColors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
