import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Quran/parah.dart';
import 'package:flutter_quran_api_practice/views/screens/Quran_Screens/parah_main_page_design.dart';

class QuranMainPageParahWidget extends StatelessWidget {
  const QuranMainPageParahWidget({super.key, required this.parah});
  final Parah parah;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2, left: 10, right: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ParahMainPageDesign.pageName,
              arguments: parah.parahNumber);
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Parah No : ${parah.parahNumber.toString()}",
                      style: const TextStyle(
                          fontFamily: "Archivo",
                          color: Colors.lime,
                          fontSize: 13),
                    ),
                    Text(
                      "Verses : ${parah.totalNumberOfVersesInThatParah.toString()}",
                      style: const TextStyle(
                          fontFamily: "Archivo",
                          color: Colors.green,
                          fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Text(
                          parah.parahArabicName,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              fontFamily: "Amiri",
                              color: Colors.white,
                              fontSize: 24),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          parah.parahRomanEnglishName,
                          style: const TextStyle(
                              fontFamily: "Archivo",
                              color: Colors.cyan,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
