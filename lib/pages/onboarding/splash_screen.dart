import 'package:flutter/material.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/pages/onboarding/onboarding_page_one.dart';
import 'package:visu_ai/resources/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigation.navigateToScreenAndClearOnePrevious(
          context: context, screen: const OnboardingPageOne());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBkack,
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                        color: AppColors.yellow,
                        fontFamily: 'Poppins',
                        fontSize: 61.36,
                        fontWeight: FontWeight.w600),
                    children: <TextSpan>[
                      TextSpan(text: 'VISU '),
                      TextSpan(
                        text: 'AI',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 61.63,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 51),
              child: Text(
                'Copyright © 2024 VISUAI. All Rights Reserved.',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
