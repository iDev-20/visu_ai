import 'package:flutter/material.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class AppPage extends StatelessWidget {
  const AppPage(
      {super.key,
      required this.children,
      required this.hasLeadingOne,
      required this.hasActionOne,
      required this.hasGradientBackground});

  final Widget children;
  final bool hasLeadingOne;
  final bool hasActionOne;
  final bool hasGradientBackground;

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
                                    Container(
                                      width: 38,
                                      height: 38,
                                      decoration: const BoxDecoration(
                                          color: AppColors.subtleGrey,
                                          shape: BoxShape.circle),
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
            ),
          )
        : Scaffold(
            backgroundColor: AppColors.darkBkack,
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
                                  Container(
                                    width: 38,
                                    height: 38,
                                    decoration: const BoxDecoration(
                                        color: AppColors.subtleGrey,
                                        shape: BoxShape.circle),
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
          );
  }
}
