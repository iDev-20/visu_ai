import 'package:flutter/material.dart';
import 'package:visu_ai/pages/onboarding/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
