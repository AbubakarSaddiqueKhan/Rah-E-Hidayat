import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Asma_Ul_Husna_Model/local_asma_ul_husna.dart';
import 'package:flutter_quran_api_practice/views/widgets/Asma_Ul_Husnaa_Page_Widgets/imporatnce_of_asma_ul_husna_in_the_light_of_quran_and_hadith.dart';
import 'package:flutter_quran_api_practice/views/widgets/Asma_Ul_Husnaa_Page_Widgets/play_all_asma_ul_husna_custom_button.dart';

class ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidgetsList
    extends StatelessWidget {
  const ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidgetsList(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 2),
          child: Text(
            "\" أسماء الله الحسنى قرآن و حدیث کی روشنی میں \"",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                color: Colors.amber,
                fontFamily: "Saleem",
                wordSpacing: 2),
          ),
        ),
        ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidget(
          asmaUlHusnaData: quranicVersesAndHadithListOnAllahNames[0],
        ),
        ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidget(
          asmaUlHusnaData: quranicVersesAndHadithListOnAllahNames[1],
        ),
        ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidget(
          asmaUlHusnaData: quranicVersesAndHadithListOnAllahNames[2],
        ),
        ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidget(
          asmaUlHusnaData: quranicVersesAndHadithListOnAllahNames[3],
        ),
        ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidget(
          asmaUlHusnaData: quranicVersesAndHadithListOnAllahNames[4],
        ),
        ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidget(
          asmaUlHusnaData: quranicVersesAndHadithListOnAllahNames[5],
        ),
        const PlayAllAsmaUlHusnaCustomButton()
      ],
    );
  }
}
