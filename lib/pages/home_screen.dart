import 'package:flutter/material.dart';
import 'package:visu_ai/components/app_page.dart';
import 'package:visu_ai/components/categories.dart';
import 'package:visu_ai/components/category_tab.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/components/section_header.dart';
import 'package:visu_ai/pages/search_screen.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome to',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                  color: AppColors.yellow,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(text: 'VISU '),
                TextSpan(
                  text: 'AI ',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
      children: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 24),
            child: Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 23, right: 20, bottom: 24.97),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.subtleGrey, AppColors.secondBlack],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
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
                                color: AppColors.subtleGrey,
                                shape: BoxShape.circle),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.05, vertical: 3.14),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(62.79),
                          border: Border.all(color: AppColors.white),
                        ),
                        child: const Text(
                          'Follow +',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 7.54,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 158,
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                      children: <TextSpan>[
                        TextSpan(text: 'Opening the World with Every Page.'),
                        TextSpan(
                          text: '\nloves reading books symbolizes ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: '\nboundless knowledge and curiosity.',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  Container(
                    height: 6,
                    width: 122,
                    decoration: BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionHeader(
                  header: 'List Category',
                  subHeader: 'View all',
                  onTap: () {
                    Navigation.navigateToScreen(
                        context: context, screen: const SearchScreen());
                  },
                ),
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
                  height: 30,
                ),
                const Categories(height: 188, width: 179),
                const SizedBox(
                  height: 30,
                ),
                const SectionHeader(
                    header: 'Trending AI', subHeader: 'see all'),
                const SizedBox(
                  height: 24,
                ),
                const Categories(height: 128.35, width: 122.2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
