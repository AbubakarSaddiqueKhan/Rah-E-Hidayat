import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/home_page_custom_quran_button.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/home_page_hadith_custom_button.dart';

class HomePageQuranAndHadithCustomButton extends StatelessWidget {
  const HomePageQuranAndHadithCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return SizedBox(
      width: width,
      height: height * 0.2,
      child: const Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Row(
          children: [
            Expanded(flex: 48, child: HomePageCustomQuranButton()),
            Spacer(flex: 2),
            Expanded(flex: 48, child: HomePageHadithCustomButtonWidget())
          ],
        ),
      ),
    );
  }
}
