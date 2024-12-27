import 'package:flutter/material.dart';
import 'package:visu_ai/resources/app_colors.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    super.key,
    required this.tabItems
  });
  
  final List<TabBarData> tabItems;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Align(
        heightFactor: 1,
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            16,
          ),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...tabItems.map((tabBarData) =>
                showSingleTab(tabBarData: tabBarData)
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showSingleTab({required TabBarData tabBarData}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: tabBarData.onTap,
        borderRadius: BorderRadius.circular(12),
        child: tabBarData.isSelected? 
          Ink(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.yellow,
              border: Border.all(
                color: AppColors.darkBkack,
              ),
            ),
            child: Text(
              tabBarData.title,
              style: const TextStyle(
                color: AppColors.yellow,
                fontSize: 13,
                fontWeight: FontWeight.w600
              ),
            ),
          ) 
        :
        showUnselectedTab(tabBarData: tabBarData),
      ),
    );
  }

  Widget showUnselectedTab({required TabBarData tabBarData}) {
    return Ink(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.black,
      ),
      child: Text(
        tabBarData.title,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 13,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}


class TabBarData {
  final int index;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  TabBarData(
      {required this.index,
      required this.title,
      required this.isSelected,
      required this.onTap});
}