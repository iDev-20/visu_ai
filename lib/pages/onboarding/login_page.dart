import 'package:flutter/material.dart';
import 'package:visu_ai/components/app_buttons.dart';
import 'package:visu_ai/components/app_form_fields.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/pages/onboarding/sign_up_page.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 65, top: 143, right: 65, bottom: 72),
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PrimaryTextFormField(
                    prefixWidget: AppImages.svgMailSubtleGrey,
                    hintText: 'pricyliaamalia@gmail.com'),
                PrimaryTextFormField(
                    prefixWidget: AppImages.svgLockSubtleGrey,
                    hintText: '********************'),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: AppColors.yellow,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50, right: 30, bottom: 89),
            child: PrimaryButton(
              onTap: () {
                Navigation.navigateToHomePage(context: context);
              },
              contentPadding: const EdgeInsets.symmetric(vertical: 14.5),
              child: const Text('Get Started'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 51),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 2,
                      width: 74,
                      color: AppColors.white,
                    ),
                    const SizedBox(width: 9),
                    const Text(
                      'Or Login With',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(width: 9),
                    Container(
                      height: 2,
                      width: 74,
                      color: AppColors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 39,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppImages.svgG,
                    const SizedBox(width: 40),
                    AppImages.svgX,
                    const SizedBox(width: 40),
                    AppImages.svgIn
                  ],
                ),
                const SizedBox(
                  height: 39,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have accout? ',
                      style: TextStyle(
                          color: AppColors.white,
                          // fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {
                        Navigation.navigateToScreen(
                            context: context, screen: const SignUpPage());
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: AppColors.yellow,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
