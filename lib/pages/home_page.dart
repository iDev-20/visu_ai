import 'package:flutter/material.dart';
// import 'package:visu_ai/components/app_tab_bar.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.tabIndex = 0});

  final int tabIndex;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<String> tabItems = [
    'All',
    'Character',
    'Fan Art',
    'SCi-Fi',
    'Fairy Tales',
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.index = widget.tabIndex;
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBkack,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                  ),
                  Row(
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 24),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 23, right: 20, bottom: 24.97),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.subtleGrey, AppColors.secondBlack],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 28.19,
                              height: 28.19,
                              decoration: const BoxDecoration(
                                  color: AppColors.subtleGrey,
                                  shape: BoxShape.circle),
                            ),
                            const SizedBox(width: 11.61),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Williams Brightons',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14.92,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    AppImages.svgDownload,
                                    const SizedBox(width: 3.06),
                                    const Text(
                                      '2k+ Views',
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 6.12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      width: 7.95,
                                    ),
                                    AppImages.svgSupervisorAccount,
                                    const SizedBox(width: 3.06),
                                    const Text(
                                      '2k+ Views',
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 6.12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.05, vertical: 3.14),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(62.79),
                            border: Border.all(color: AppColors.white),
                          ),
                          child: const Text(
                            'Follow +',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 7.54,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 158,
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                        children: <TextSpan>[
                          TextSpan(text: 'Opening the World with Every Page.'),
                          TextSpan(
                            text: '\nloves reading books symbolizes ',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: '\nboundless knowledge and curiosity.',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                    Container(
                      height: 6,
                      width: 122,
                      decoration: BoxDecoration(
                        color: AppColors.yellow,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'List Category',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // DefaultTabController(
                  //   length: 5,
                  //   child: Column(
                  //     children: [
                  //       AppTabBar(
                  //         tabItems: [
                  //           for (int i = 0; i < tabItems.length; i++)
                  //             TabBarData(
                  //                 index: i,
                  //                 title: tabItems[i],
                  //                 isSelected: _tabController.index == i,
                  //                 onTap: () {}),
                  //         ],
                  //       ),
                  //       // TabBarView(
                  //       //   controller: _tabController,
                  //       //   children: const [
                  //       //     Text('data'),
                  //       //     Text('data'),
                  //       //     Text('data'),
                  //       //     Text('data'),
                  //       //     Text('data'),
                  //       //   ],
                  //       // ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
