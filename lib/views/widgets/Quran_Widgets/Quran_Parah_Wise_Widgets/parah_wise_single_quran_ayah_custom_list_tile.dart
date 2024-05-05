import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/SimpleArabicQuranParahWise/simple_arabic_quran_parah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Parah_Wise_Widgets/parah_wise_quran_translation_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Parah_Wise_Widgets/parah_wise_simple_arabic_quran_text.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Parah_Wise_Widgets/parah_wise_single_ayah_operations.dart';

class ParahWiseSingleQuranAyahCustomListTile extends StatelessWidget {
  final QuranReciterModel quranReciterMainData;
  final SimpleArabicQuranParahWiseLoadedState state;
  final int index;
  final List<String> allParahQuranTranslationText;
  const ParahWiseSingleQuranAyahCustomListTile(
      {super.key,
      required this.index,
      required this.quranReciterMainData,
      required this.state,
      required this.allParahQuranTranslationText});

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
              ParahWiseSingleAyahOperationsWidget(
                index: index,
                quranReciterMainData: quranReciterMainData,
                state: state,
              ),
              const SizedBox(
                height: 10,
              ),
              ParahWiseSimpleArabicQuranText(
                index: index,
                state: state,
              ),
              Text(
                "‏ ﻿﻿ ﴿  آیت نمبر ${state.simpleArabicQuranParahWiseData.data.ayahs[index].number} ﴾",
                textDirection: TextDirection.rtl,
                style:
                    const TextStyle(fontFamily: "Amiri", color: Colors.amber),
              ),
              const SizedBox(
                height: 5,
              ),
              ParahWiseQuranTranslationCustomWidget(
                allParahQuranTranslationText: allParahQuranTranslationText,
                index: index,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
