import 'package:flutter/material.dart';
import 'package:visu_ai/components/app_buttons.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/components/slide_indicator.dart';
import 'package:visu_ai/pages/onboarding/login_page.dart';
import 'package:visu_ai/resources/app_colors.dart';

class OnboardingPageTwo extends StatefulWidget {
  const OnboardingPageTwo({super.key});

  @override
  State<OnboardingPageTwo> createState() => _ObBoardingPageState();
}

class _ObBoardingPageState extends State<OnboardingPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBkack,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(72),
                  bottomRight: Radius.circular(72),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 27, right: 22),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                    color: AppColors.white,
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(text: 'Transforming Imagination \ninto Stunning '),
                  TextSpan(
                    text: 'Visuals',
                    style: TextStyle(
                        color: AppColors.yellow,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 37),
            child: Text(
              'VisuAI is an innovative platform that empowers you to create '
              'extraordinary visual works with ease. Powered by cutting-edge '
              'artificial intelligence',
              style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          const SlideIndicator(
            selectedIndex: true,
          ),
          // Container(
          //   height: 6,
          //   width: 122,
          //   decoration: BoxDecoration(
          //       color: AppColors.yellow,
          //       borderRadius: BorderRadius.circular(8)),
          // ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, top: 32, right: 30, bottom: 41),
            child: PrimaryButton(
              onTap: () {
                Navigation.navigateToScreen(
                    context: context, screen: const LoginPage());
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                'Let’s Create Ideas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
