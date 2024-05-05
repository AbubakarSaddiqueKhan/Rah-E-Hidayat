import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/AudioQuranBloc/audio_quran_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Simple_Arabic_Quran_Surah_Wise/simple_arabic_quran_surah_wise_bloc.dart';

class SurahWiseCustomSingleAyahOperationsWidget extends StatelessWidget {
  final SimpleArabicQuranSurahWiseLoadedState state;
  final int index;
  final QuranReciterModel quranReciterMainData;
  const SurahWiseCustomSingleAyahOperationsWidget(
      {super.key,
      required this.state,
      required this.quranReciterMainData,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "‏ ﻿﻿ ﴿ ${state.simpleArabicCompleteSurahData.data.ayahs[index].numberInSurah} : ${state.simpleArabicCompleteSurahData.data.number} ﴾",
          textDirection: TextDirection.rtl,
          style: const TextStyle(fontFamily: "Amiri", color: Colors.amber),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          alignment: Alignment.center,
          child: const Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
            child: Text(
              "Translation",
              style: TextStyle(
                fontFamily: "Archivo",
                color: Colors.cyan,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          alignment: Alignment.center,
          child: const Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
            child: Text(
              "Tafseer",
              style: TextStyle(
                fontFamily: "Archivo",
                color: Colors.green,
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () async {
              int quranRecitationAyahNumber =
                  state.simpleArabicCompleteSurahData.data.ayahs[index].number;
              context.read<AudioQuranBloc>().add(
                  PlayAudioQuranOfGivenReciterWithAyahNumberEvent(
                      quranReciterData: quranReciterMainData,
                      quranRecitationAyahNumber: quranRecitationAyahNumber));
            },
            icon: const Icon(
              Icons.volume_up_outlined,
              color: Colors.white,
            )),
      ],
    );
  }
}
