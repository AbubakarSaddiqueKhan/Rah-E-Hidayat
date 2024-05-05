import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/screens/Supplications/supplication_categories_main_page.dart';
import 'dart:developer' as developer;

class HomePageSupplicationsCustomButton extends StatelessWidget {
  const HomePageSupplicationsCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        developer.log("Navigate to Supplications page");

        Navigator.of(context)
            .pushNamed(SupplicationCategoriesMainPage.pageName);
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
                    "assets/images/supplication.png",
                    fit: BoxFit.contain,
                  ),
                )),
            const Expanded(
              flex: 30,
              child: Text(
                "مسنون دعائیں",
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
