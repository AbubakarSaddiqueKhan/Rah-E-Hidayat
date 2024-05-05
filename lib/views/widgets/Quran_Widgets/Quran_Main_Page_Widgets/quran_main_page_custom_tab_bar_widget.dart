import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_custom_tabs.dart';

class QuranMainPageCustomTabBarWidget extends StatelessWidget {
  const QuranMainPageCustomTabBarWidget(
      {super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 1,
          )),
      mouseCursor: MaterialStateMouseCursor.clickable,
      physics: const BouncingScrollPhysics(),
      dividerColor: Colors.transparent,
      isScrollable: true,
      tabs: quranMainPageCustomTabBarsTitle,
      controller: tabController,
    );
  }
}
