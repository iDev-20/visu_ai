import 'package:flutter/material.dart';
import 'package:visu_ai/resources/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBkack,
      body: Column(
        children: [],
      ),
    );
  }
}
