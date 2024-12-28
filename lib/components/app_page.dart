import 'package:flutter/material.dart';
import 'package:visu_ai/components/drawer_menu_items.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/pages/create_image_screen.dart';
import 'package:visu_ai/pages/home_screen.dart';
import 'package:visu_ai/pages/search_screen.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
    required this.hasLeadingOne,
    required this.hasActionOne,
    required this.hasGradientBackground,
    required this.children,
  });

  final bool hasLeadingOne;
  final bool hasActionOne;
  final bool hasGradientBackground;
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return hasGradientBackground
        ? Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4, 0.6, 0.61],
                colors: [
                  AppColors.grey200,
                  AppColors.secondBlack,
                  AppColors.darkBkack
                ],
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              // drawerEnableOpenDragGesture: true,
              body: SafeArea(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          hasLeadingOne
                              ? Column(
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
                                )
                              : InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
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
                                ),
                          hasActionOne
                              ? Row(
                                  children: [
                                    const Icon(
                                      Icons.notifications_none_sharp,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 14),
                                    AppImages.svgBookmark,
                                    const SizedBox(width: 10),
                                    InkWell(
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                            color: AppColors.subtleGrey,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 9),
                                      decoration: const BoxDecoration(
                                          color: AppColors.secondBlack,
                                          shape: BoxShape.circle),
                                      child: AppImages.svgShare,
                                    ),
                                    const SizedBox(width: 13),
                                    Container(
                                      width: 35,
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 11, vertical: 15),
                                      decoration: const BoxDecoration(
                                          color: AppColors.secondBlack,
                                          shape: BoxShape.circle),
                                      child: AppImages.svgMore,
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
              // drawer: Drawer(
              //   width: 266,
              //   backgroundColor: AppColors.darkBkack,
              //   child: ListView(
              //     padding: EdgeInsets.zero,
              //     children: [
              //       const DrawerHeader(
              //         decoration: BoxDecoration(
              //           color: Colors.blue,
              //         ),
              //         child: Text('Drawer Header'),
              //       )
              //     ],
              //   ),
              // ),
            ),
          )
        : Scaffold(
            backgroundColor: AppColors.darkBkack,
            // drawerEnableOpenDragGesture: true,
            body: SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        hasLeadingOne
                            ? Column(
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
                              )
                            : InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
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
                              ),
                        hasActionOne
                            ? Row(
                                children: [
                                  const Icon(
                                    Icons.notifications_none_sharp,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(width: 14),
                                  AppImages.svgBookmark,
                                  const SizedBox(width: 10),
                                  Builder(builder: (context) {
                                    return InkWell(
                                      onTap: () {
                                        Scaffold.of(context).openEndDrawer();
                                      },
                                      child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                            color: AppColors.subtleGrey,
                                            shape: BoxShape.circle),
                                      ),
                                    );
                                  })
                                ],
                              )
                            : Row(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 9),
                                    decoration: const BoxDecoration(
                                        color: AppColors.secondBlack,
                                        shape: BoxShape.circle),
                                    child: AppImages.svgShare,
                                  ),
                                  const SizedBox(width: 13),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 11, vertical: 15),
                                    decoration: const BoxDecoration(
                                        color: AppColors.secondBlack,
                                        shape: BoxShape.circle),
                                    child: AppImages.svgMore,
                                  ),
                                ],
                              )
                      ],
                    ),
                  ),
                  Column(
                    children: [children],
                  ),
                ],
              ),
            ),
            endDrawer: Drawer(
              width: 266,
              backgroundColor: AppColors.darkBkack,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 21, top: 72, right: 30, bottom: 20.48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: const BoxDecoration(
                              color: AppColors.subtleGrey,
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.white,
                              size: 25,
                            ),
                            Text(
                              'Pryclia Amalia',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.49, vertical: 5.73),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppImages.svgCrownYellow,
                              const SizedBox(width: 1.82),
                              const Text(
                                '120 Credits',
                                style: TextStyle(
                                    color: AppColors.darkBkack,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.48,
                  ),
                  DrawerMenuItem(
                      title: 'Home',
                      leadingImage: AppImages.svgHome,
                      onTap: () {
                        Navigation.navigateToHomePage(context: context);
                      },
                      isSelected: selectedDrawerIndex == 0),
                  DrawerMenuItem(
                      title: 'Search',
                      leadingImage: AppImages.svgSearchOff,
                      onTap: () {
                        selectedDrawerIndex = 1;
                        Navigation.navigateToScreen(
                            context: context, screen: const SearchScreen());
                      },
                      isSelected: selectedDrawerIndex == 1),
                  DrawerMenuItem(
                      title: 'Create Image AI',
                      leadingImage: AppImages.avgAddPhoto,
                      onTap: () {
                        selectedDrawerIndex = 2;
                        Navigation.navigateToScreen(
                            context: context,
                            screen: const CreateImageScreen());
                      },
                      isSelected: selectedDrawerIndex == 2),
                  DrawerMenuItem(
                      title: 'Notifications',
                      leadingImage: const Icon(Icons.notifications_none_sharp,
                          color: AppColors.white, size: 20),
                      onTap: () {},
                      isSelected: selectedDrawerIndex == 3),
                  DrawerMenuItem(
                      title: 'Saved Image',
                      leadingImage: AppImages.svgBookmark,
                      onTap: () {},
                      isSelected: selectedDrawerIndex == 4),
                  DrawerMenuItem(
                      title: 'Users',
                      leadingImage: AppImages.svg3User,
                      onTap: () {},
                      isSelected: selectedDrawerIndex == 5),
                  DrawerMenuItem(
                      title: 'Settings',
                      leadingImage: AppImages.svgSetting,
                      onTap: () {},
                      isSelected: selectedDrawerIndex == 6),
                  DrawerMenuItem(
                      title: 'Tools',
                      leadingImage: AppImages.svgFilter,
                      onTap: () {},
                      isSelected: selectedDrawerIndex == 7),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 40, right: 45, bottom: 85),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Social Media',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            AppImages.svgG,
                            const SizedBox(width: 40),
                            AppImages.svgX,
                            const SizedBox(width: 40),
                            AppImages.svgIn
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
