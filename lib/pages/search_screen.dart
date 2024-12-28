import 'package:flutter/material.dart';
import 'package:visu_ai/components/app_form_fields.dart';
import 'package:visu_ai/components/app_page.dart';
import 'package:visu_ai/components/categories.dart';
import 'package:visu_ai/components/category_tab.dart';
import 'package:visu_ai/components/section_header.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
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
      child: Row(
        children: [
          AppImages.svgArrowLeftAlt,
          const SizedBox(
            width: 13.25,
          ),
          const Text(
            'Back',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
      children: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SearchTextFormField(
              hintText: 'Search',
              suffixWidget: AppImages.svgInstantMix,
            ),
            const SizedBox(
              height: 24,
            ),
            const SectionHeader(header: 'List Category', subHeader: 'View all'),
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
            const SectionHeader(header: 'Trending Al', subHeader: 'see all'),
            const SizedBox(
              height: 24,
            ),
            const Categories(height: 128.35, width: 122.2),
            const SizedBox(
              height: 30,
            ),
            const SectionHeader(header: 'New Image Al', subHeader: 'see all'),
            const SizedBox(
              height: 13.65,
            ),
            const Categories(height: 188, width: 179),
          ],
        ),
      ),
    );
  }
}
