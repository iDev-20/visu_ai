import 'package:flutter/material.dart';
import 'package:visu_ai/components/app_buttons.dart';
import 'package:visu_ai/components/app_form_fields.dart';
import 'package:visu_ai/components/navigation.dart';
import 'package:visu_ai/pages/onboarding/login_page.dart';
import 'package:visu_ai/resources/app_images.dart';

import '../../resources/app_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100, bottom: 72),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                  'Welcome Please Complete \nyour account',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w100),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryTextFormField(
                    prefixWidget: AppImages.svgPersonGrey,
                    hintText: 'Pricylia Amalia'),
                PrimaryTextFormField(
                    prefixWidget: AppImages.svgMailSubtleGrey,
                    hintText: 'pricyliaamalia@gmail.com'),
                PrimaryTextFormField(
                    prefixWidget: AppImages.svgLockSubtleGrey,
                    hintText: '********************'),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    AppImages.svgSelectedCheckBoxWithBlackTick,
                    const SizedBox(width: 6),
                    const Text(
                      'Agree with ',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'Terms & condition',
                      style: TextStyle(
                        color: AppColors.yellow,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, top: 33, right: 30, bottom: 33),
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
                      'Have accout? ',
                      style: TextStyle(
                          color: AppColors.white,
                          // fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {
                        Navigation.navigateToScreen(
                            context: context, screen: const LoginPage());
                      },
                      child: const Text(
                        'Login',
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
