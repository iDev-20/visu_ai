import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:visu_ai/components/app_buttons.dart';
import 'package:visu_ai/components/app_page.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      hasGradientBackground: true,
      hasLeadingOne: false,
      hasActionOne: false,
      children: Padding(
        padding:
            const EdgeInsets.only(left: 30, top: 256, right: 30, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 28.19,
                      height: 28.19,
                      decoration: const BoxDecoration(
                          color: AppColors.subtleGrey, shape: BoxShape.circle),
                    ),
                    const SizedBox(width: 11.61),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Williams Brightons',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14.92,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            AppImages.svgDownload,
                            const SizedBox(width: 3.06),
                            const Text(
                              '2k+ Views',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 6.12,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: 7.95,
                            ),
                            AppImages.svgSupervisorAccount,
                            const SizedBox(width: 3.06),
                            const Text(
                              '2k+ Views',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 6.12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    height: 44,
                    width: 44,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.05, vertical: 3.14),
                    decoration: const BoxDecoration(
                        color: AppColors.grey, shape: BoxShape.circle),
                    child: AppImages.svgBookmarkYellow),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'Classic River Kingdom',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Descriptions',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 14,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                    color: AppColors.white,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'perfect blend of natural beauty and historical grandeur. '
                          'Surrounded by a majestic river that flows calmly, this '
                          'kingdom exudes classic luxury. '),
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                        color: AppColors.yellow,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                const Text(
                  'Prompt AI',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 11.12,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 11.68, vertical: 9.01),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.secondBlack)),
                  child: AppImages.svgContentCopy,
                ),
              ],
            ),
            const SizedBox(
              height: 14.76,
            ),
            const Text(
              'high quality, highly detailed, Picture an imaginative illustration '
              'inspired by the fusion of Gustav Doré, Yuko Higuchi, and Syd Mead, '
              'theme revolve around a fantastical cityscape where mythical creatures '
              'coexist with futuristic elements, creating a harmonious blend of the '
              'past, present, and future,',
              style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 36.65,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imageOptions(icon: AppImages.svgCrop, option: 'Crop Image'),
                const SizedBox(width: 8.18),
                imageOptions(
                    icon: AppImages.svgInvertColors, option: 'Edit Colors'),
                const SizedBox(width: 8.18),
                imageOptions(
                    icon: AppImages.svgDynamicFeed, option: 'Remove BG'),
              ],
            ),
            const SizedBox(
              height: 16.48,
            ),
            const PrimaryButton(
              child: Text(
                'Download Image',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageOptions({required SvgPicture icon, required String option}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7.2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.secondBlack),
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
    );
  }
}
