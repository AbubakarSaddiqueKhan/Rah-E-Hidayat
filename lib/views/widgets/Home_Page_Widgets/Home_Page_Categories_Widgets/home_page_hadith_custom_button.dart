import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/screens/Hadith_Screens/hadith_main_books_list_page.dart';

class HomePageHadithCustomButtonWidget extends StatelessWidget {
  const HomePageHadithCustomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadithMainPage.pageName);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 1,
            )),
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
                flex: 70,
                child: SizedBox(
                  child: Image.asset(
                    "assets/images/hadith_books_collection.png",
                    fit: BoxFit.contain,
                  ),
                )),
            const Expanded(
              flex: 30,
              child: Text(
                "الحدیت",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, color: Colors.lime, fontFamily: "Archivo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
