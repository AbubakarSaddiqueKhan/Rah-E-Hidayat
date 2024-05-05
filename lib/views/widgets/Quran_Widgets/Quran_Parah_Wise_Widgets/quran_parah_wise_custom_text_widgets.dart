import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator_data.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Parah_Wise_Quran_Translation_Categorization_Bloc/parah_wise_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class QuranParahWiseQuranTranslationCustomTextWidget extends StatelessWidget {
  final ParahWiseQuranTranslationCategorizationLoadedState state;
  final List<String> allParahQuranTranslationText;
  final int index;

  const QuranParahWiseQuranTranslationCustomTextWidget(
      {super.key,
      required this.allParahQuranTranslationText,
      required this.index,
      required this.state});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: (state.completeQuranTranslatorData.quranTranslationDirection ==
              QuranTranslator.leftToRightTextDirection)
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Text(
        allParahQuranTranslationText[index],
        textDirection:
            (state.completeQuranTranslatorData.quranTranslationDirection ==
                    QuranTranslator.leftToRightTextDirection)
                ? TextDirection.ltr
                : TextDirection.rtl,
        textAlign:
            (state.completeQuranTranslatorData.quranTranslationDirection ==
                    QuranTranslator.leftToRightTextDirection)
                ? TextAlign.end
                : TextAlign.start,
        style: TextStyle(
            color: currentSelectedQuranTranslationTextColorMainData,
            fontFamily:
                state.completeQuranTranslatorData.quranTranslationFontStyleName,
            fontSize: currentQuranTranslationFontSizeMainData),
      ),
    );
  }
}
