import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator_data.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/CompleteQuranTranslationBloc/complete_quran_translation_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class SurahWiseQuranTranslationWidget extends StatelessWidget {
  final int surahNumber;
  final int index;
  const SurahWiseQuranTranslationWidget(
      {super.key, required this.surahNumber, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompleteQuranTranslationBloc,
        CompleteQuranTranslationState>(
      builder: (context, state) {
        if (state is CompleteQuranTranslationInitialState) {
          developer.log("Intialllll..............");

          context.read<CompleteQuranTranslationBloc>().add(
              FetchCompleteQuranTranslationEvent(
                  translatorId: quranTranslatorIdMainData));
          return const SizedBox.shrink();
        } else if (state is CompleteQuranTranslationLoadingState) {
          developer.log("Loadingggggggggggg..............");
          return const SizedBox.shrink();
        } else if (state is CompleteQuranTranslationErrorState) {
          developer.log("Erorrrrrrrrrrrr..............");
          return const SizedBox.shrink();
        } else {
          developer.log("loadedddd..............");
          (state as CompleteQuranTranslationLoadedState);
          return Align(
            alignment: (state.quranTranslatorData.quranTranslationDirection ==
                    QuranTranslator.leftToRightTextDirection)
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Text(
              state.completeQuranTranslationData.data.surahs[surahNumber - 1]
                  .ayahs[index].text,
              textDirection:
                  (state.quranTranslatorData.quranTranslationDirection ==
                          QuranTranslator.leftToRightTextDirection)
                      ? TextDirection.ltr
                      : TextDirection.rtl,
              textAlign: (state.quranTranslatorData.quranTranslationDirection ==
                      QuranTranslator.leftToRightTextDirection)
                  ? TextAlign.end
                  : TextAlign.start,
              style: TextStyle(
                  color: currentSelectedQuranTranslationTextColorMainData,
                  fontFamily:
                      state.quranTranslatorData.quranTranslationFontStyleName,
                  fontSize: currentQuranTranslationFontSizeMainData),
            ),
          );
        }
      },
    );
  }
}
