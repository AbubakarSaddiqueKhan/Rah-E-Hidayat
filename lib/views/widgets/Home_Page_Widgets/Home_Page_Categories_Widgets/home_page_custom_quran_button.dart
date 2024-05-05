import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/screens/Quran_Screens/quran_main_page_design.dart';

class HomePageCustomQuranButton extends StatelessWidget {
  const HomePageCustomQuranButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (kDebugMode) {
          print("clicked..............");
        }
        Navigator.of(context).pushNamed(QuranMainPageDesign.pageName);
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
                    "assets/images/quran.png",
                    fit: BoxFit.contain,
                  ),
                )),
            const Expanded(
              flex: 30,
              child: Text(
                "القرآن",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 22, color: Colors.lime, fontFamily: "Amiri"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
