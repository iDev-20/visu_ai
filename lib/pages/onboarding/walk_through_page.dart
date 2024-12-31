// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:visu_ai/components/slide_indicator.dart';
// import 'package:visu_ai/pages/onboarding/onboarding_page_one.dart';
// import 'package:visu_ai/pages/onboarding/onboarding_page_two.dart';

// class WalkThroughPage extends StatefulWidget {
//   const WalkThroughPage({super.key});

//   @override
//   State<WalkThroughPage> createState() => _WalkThroughPageState();
// }

// class _WalkThroughPageState extends State<WalkThroughPage> {
//   late PageController _pageController;

//   int _currentPage = 0;

//   final Duration _slideAnimationDuration = const Duration(milliseconds: 500);

//   late Timer _timer;

//   final List<Widget> _slideList = [
//     const OnboardingPageOne(),
//     const OnboardingPageTwo(),
//   ];

//   bool userControl = false;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: 0);

//     _timer = Timer.periodic(
//       const Duration(seconds: 5),
//       (t) {
//         if (userControl == false && _currentPage != _slideList.length - 1) {
//           _pageController.nextPage(
//             duration: _slideAnimationDuration,
//             curve: Curves.easeIn,
//           );
//         } else {
//           _timer.cancel();
//         }
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             const SizedBox(height: 64),
//             Expanded(
//               child: PageView.builder(
//                 padEnds: false,
//                 scrollDirection: Axis.horizontal,
//                 controller: _pageController,
//                 onPageChanged: (index) {
//                   setState(() {
//                     _currentPage = index;
//                   });
//                 },
//                 itemCount: _slideList.length,
//                 itemBuilder: (context, index) => GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       userControl = true;
//                     });
//                   },
//                   onHorizontalDragUpdate: (drag) {
//                     setState(() {
//                       userControl = true;
//                     });

//                     if (drag.primaryDelta! < 0) {
//                       if (_currentPage != _slideList.length - 1) {
//                         _pageController.nextPage(
//                           duration: _slideAnimationDuration,
//                           curve: Curves.easeIn,
//                         );
//                       }
//                     } else {
//                       if (_currentPage != 0) {
//                         _pageController.previousPage(
//                           duration: _slideAnimationDuration,
//                           curve: Curves.easeIn,
//                         );
//                       }
//                     }
//                   },
//                   // child: Column(
//                   //   children: _slideList,
//                   // ),
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 SlideIndicator(
//                     selectedIndex: _currentPage, slideList: _slideList),
//                 const SizedBox(height: 24),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
