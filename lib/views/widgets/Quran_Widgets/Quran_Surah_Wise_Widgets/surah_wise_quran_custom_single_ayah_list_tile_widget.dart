import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Simple_Arabic_Quran_Surah_Wise/simple_arabic_quran_surah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Surah_Wise_Widgets/surah_wise_arabic_quran_ayahs_text_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Surah_Wise_Widgets/surah_wise_custom_single_ayah_operations_widgets.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Surah_Wise_Widgets/surah_wise_quran_translation_widget.dart';

class SurahWiseQuranCustomSingleAyahListTileWidget extends StatelessWidget {
  final SimpleArabicQuranSurahWiseLoadedState state;
  final int index;
  final int surahNumber;
  const SurahWiseQuranCustomSingleAyahListTileWidget(
      {super.key,
      required this.index,
      required this.state,
      required this.surahNumber});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 2, top: 2, right: 10),
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 1,
            )),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
          child: Column(
            children: [
              SurahWiseCustomSingleAyahOperationsWidget(
                quranReciterMainData: quranReciterMainData,
                index: index,
                state: state,
              ),
              const SizedBox(
                height: 10,
              ),
              SurahWiseArabicQuranAyahsTextWidget(
                index: index,
                state: state,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  AnimatedScale(
                    scale: currentTranslationShowingState == true ? 1 : 0,
                    duration: const Duration(milliseconds: 400),
                    child: SurahWiseQuranTranslationWidget(
                      index: index,
                      surahNumber: surahNumber,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
