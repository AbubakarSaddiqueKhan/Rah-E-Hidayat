import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_custom_tab_bar_view.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_custom_tab_bar_widget.dart';

class QuranMainPageDesign extends StatefulWidget {
  const QuranMainPageDesign({super.key});
  static const pageName = "quranPage/";

  @override
  State<QuranMainPageDesign> createState() => _QuranMainPageDesignState();
}

class _QuranMainPageDesignState extends State<QuranMainPageDesign>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/dark.jpg",
                  ),
                  fit: BoxFit.cover)),
          alignment: Alignment.center,
          child: Column(
            children: [
              QuranMainPageCustomTabBarWidget(tabController: _tabController),
              const SizedBox(
                height: 10,
              ),
              QuranMainPageCustomTabBarView(tabController: _tabController)
            ],
          ),
        ),
      ),
    );
  }
}
