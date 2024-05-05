import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Simple_Arabic_Quran_Surah_Wise/simple_arabic_quran_surah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Surah_Wise_Widgets/surah_wise_quran_custom_single_ayah_list_tile_widget.dart';

class SurahWiseCustomListViewDesignWidget extends StatelessWidget {
  final int surahNumber;
  const SurahWiseCustomListViewDesignWidget(
      {super.key, required this.surahNumber});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimpleArabicQuranSurahWiseBloc,
        SimpleArabicQuranSurahWiseState>(
      builder: (context, state) {
        if (state is SimpleArabicQuranSurahWiseInitialState) {
          return const Text(
            "init ...........,",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else if (state is SimpleArabicQuranSurahWiseLoadingState) {
          return const Text(
            "Loadig ...........,",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else if (state is SimpleArabicQuranSurahWiseErrorState) {
          return const Text(
            "errrrrrr ...........,",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else {
          (state as SimpleArabicQuranSurahWiseLoadedState);
          return ListView.builder(
            itemCount: state.simpleArabicCompleteSurahData.data.ayahs.length,
            itemBuilder: (context, index) {
              return SurahWiseQuranCustomSingleAyahListTileWidget(
                index: index,
                state: state,
                surahNumber: surahNumber,
              );
            },
          );
        }
      },
    );
  }
}
