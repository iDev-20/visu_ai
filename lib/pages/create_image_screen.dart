import 'package:flutter/material.dart';
import 'package:visu_ai/components/app_buttons.dart';
import 'package:visu_ai/components/app_page.dart';
import 'package:visu_ai/components/categories.dart';
import 'package:visu_ai/components/category_tab.dart';
import 'package:visu_ai/components/image_options.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/components/section_header.dart';
import 'package:visu_ai/pages/details_screen.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class CreateImageScreen extends StatefulWidget {
  const CreateImageScreen({super.key});

  @override
  State<CreateImageScreen> createState() => _CreateImageScreenState();
}

class _CreateImageScreenState extends State<CreateImageScreen> {
  int? selectedIndex = 0;

  List<String> categories = [
    'All',
    'Character',
    'Fan Art',
    'SCi-Fi',
    'Fairy Tales',
  ];

  @override
  Widget build(BuildContext context) {
    return AppPage(
      hasLeadingOne: false,
      hasActionOne: false,
      hasGradientBackground: false,
      children: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
        child: Column(
          children: [
            Container(
              height: 313,
              decoration: BoxDecoration(
                color: AppColors.grey200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11.69, vertical: 6.76),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 0.5, color: AppColors.white)),
                        child: Row(
                          children: [
                            AppImages.svgCrown,
                            const SizedBox(width: 2),
                            const Text(
                              'Get Premium',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      AppImages.svgCropFree,
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageOptions(icon: AppImages.svgCrop, option: 'Crop Image'),
                const SizedBox(width: 8.18),
                ImageOptions(
                    icon: AppImages.svgInvertColors, option: 'Edit Colors'),
                const SizedBox(width: 8.18),
                ImageOptions(
                    icon: AppImages.svgDynamicFeed, option: 'Remove BG'),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Text Prompt',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 11.68, vertical: 9.01),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(width: 2.0, color: AppColors.secondBlack)),
                  child: Row(
                    children: [
                      AppImages.svgEdit,
                      const SizedBox(width: 2),
                      const Text(
                        'Edit Text',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 17, top: 17, right: 11, bottom: 17),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2.0, color: AppColors.secondBlack)),
              child: const Text(
                'high quality, highly detailed, Picture an imaginative illustration '
                'inspired by the fusion of Gustav Doré, Yuko Higuchi, and Syd Mead, '
                'theme revolve around a fantastical cityscape where mythical '
                'creatures coexist with futuristic elements, creating a '
                'harmonious blend of the past, present, and future,',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                // textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            PrimaryButton(
              onTap: () {
                Navigation.navigateToScreen(
                    context: context, screen: const DetailsScreen());
              },
              child: const Text('Let’s Create Image'),
            ),
            const SizedBox(
              height: 25,
            ),
            const SectionHeader(
                header: 'Trending Image', subHeader: 'View all'),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                categories.length,
                (index) => CategoryTab(
                  title: categories[index],
                  isSelected: selectedIndex == index,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Categories(height: 128.35, width: 122.2),
          ],
        ),
      ),
    );
  }
}
