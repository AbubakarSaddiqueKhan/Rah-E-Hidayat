import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/AudioQuranBloc/audio_quran_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/SimpleArabicQuranParahWise/simple_arabic_quran_parah_wise_bloc.dart';

class ParahWiseSingleAyahOperationsWidget extends StatelessWidget {
  final SimpleArabicQuranParahWiseLoadedState state;
  final QuranReciterModel quranReciterMainData;
  final int index;
  const ParahWiseSingleAyahOperationsWidget(
      {super.key,
      required this.index,
      required this.quranReciterMainData,
      required this.state});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
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
            onPressed: () {
              int quranRecitationAyahNumber =
                  state.simpleArabicQuranParahWiseData.data.ayahs[index].number;
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
