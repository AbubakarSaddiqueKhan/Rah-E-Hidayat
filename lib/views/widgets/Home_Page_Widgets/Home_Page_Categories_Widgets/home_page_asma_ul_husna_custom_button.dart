import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/screens/Asma_Al_Husna_Main_Page/asma_al_husnaa_main_page_design.dart';

class HomePageAsmaUlHusnaaCustomButton extends StatelessWidget {
  const HomePageAsmaUlHusnaaCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AsmaUlHusnaMainPageDesign.pageName);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Container(
            width: width,
            height: height * 0.1,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: const Row(
              children: [
                Expanded(
                  child: Text(
                    "Asma ul Husna",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.lime,
                        fontFamily: "Archivo"),
                  ),
                ),
                VerticalDivider(
                  indent: 0,
                  endIndent: 0.1,
                ),
                Expanded(
                  child: Text(
                    "اسماء الحسنہ",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.greenAccent,
                        fontFamily: "Amiri"),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
