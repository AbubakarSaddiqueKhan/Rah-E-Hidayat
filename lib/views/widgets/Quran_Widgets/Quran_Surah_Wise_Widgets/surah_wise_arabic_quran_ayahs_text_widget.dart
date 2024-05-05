import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Simple_Arabic_Quran_Surah_Wise/simple_arabic_quran_surah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class SurahWiseArabicQuranAyahsTextWidget extends StatelessWidget {
  final SimpleArabicQuranSurahWiseLoadedState state;
  final int index;

  const SurahWiseArabicQuranAyahsTextWidget(
      {super.key, required this.state, required this.index});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        state.simpleArabicCompleteSurahData.data.ayahs[index].text,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.start,
        style: TextStyle(
            color: currentSelectedArabicQuranTextColorMainData,
            fontFamily: currentSelectedArabicQuranFontStyleNameMainData,
            fontSize: currentArabicQuranFontSizeMainData,
            wordSpacing: 2.5,
            height: 2.25),
      ),
    );
  }
}
