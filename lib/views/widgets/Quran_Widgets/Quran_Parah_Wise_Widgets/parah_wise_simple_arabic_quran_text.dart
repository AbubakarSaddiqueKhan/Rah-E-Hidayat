import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/SimpleArabicQuranParahWise/simple_arabic_quran_parah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class ParahWiseSimpleArabicQuranText extends StatelessWidget {
  final SimpleArabicQuranParahWiseLoadedState state;
  final int index;
  const ParahWiseSimpleArabicQuranText(
      {super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        state.simpleArabicQuranParahWiseData.data.ayahs[index].text,
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
