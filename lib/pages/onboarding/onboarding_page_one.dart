import 'package:flutter/material.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/pages/onboarding/onboarding_page_two.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class OnboardingPageOne extends StatefulWidget {
  const OnboardingPageOne({super.key});

  @override
  State<OnboardingPageOne> createState() => _OnboardingPageOneState();
}

class _OnboardingPageOneState extends State<OnboardingPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBkack,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, top: 27, right: 30, bottom: 47),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(text: 'Empower Your \nVision, Crafted by '),
                        TextSpan(
                          text: '\nVISU ',
                          style: TextStyle(
                              color: AppColors.yellow,
                              fontSize: 32,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: 'AI',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'innovative application that transforms ideas into stunning '
                    'visuals with the help of artificial intelligence. Designed '
                    'for artists, designers, and creators',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(130),
                    topRight: Radius.circular(130),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 402, right: 16, bottom: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 6,
                        width: 122,
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 46,
                                  height: 46,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: AppColors.yellow)),
                                  child: AppImages.svgWest),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Back',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigation.navigateToScreen(
                                  context: context,
                                  screen: const OnboardingPageTwo());
                            },
                            child: Row(
                              children: [
                                const Text(
                                  'Next',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                    width: 46,
                                    height: 46,
                                    padding: const EdgeInsets.all(12),
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle,
                                    ),
                                    child: AppImages.svgEast),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
