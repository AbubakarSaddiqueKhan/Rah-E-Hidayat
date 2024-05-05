import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/SimpleArabicQuranParahWise/simple_arabic_quran_parah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Parah_Wise_Widgets/parah_wise_single_quran_ayah_custom_list_tile.dart';

class ParahWiseQuranCustomListViewDesignWidget extends StatelessWidget {
  final List<String> allParahQuranTranslationText;
  final QuranReciterModel quranReciterMainData;
  const ParahWiseQuranCustomListViewDesignWidget(
      {super.key,
      required this.allParahQuranTranslationText,
      required this.quranReciterMainData});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimpleArabicQuranParahWiseBloc,
        SimpleArabicQuranParahWiseState>(
      builder: (context, state) {
        if (state is SimpleArabicQuranParahWiseInitialState) {
          return const Text(
            "init ...........,",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else if (state is SimpleArabicQuranParahWiseLoadingState) {
          return const Text(
            "Loadig ...........,",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else if (state is SimpleArabicQuranParahWiseErrorState) {
          return const Text(
            "Errooooorr ...........,",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else {
          (state as SimpleArabicQuranParahWiseLoadedState);
          return ListView.builder(
            itemCount: state.simpleArabicQuranParahWiseData.data.ayahs.length,
            itemBuilder: (context, index) {
              return ParahWiseSingleQuranAyahCustomListTile(
                allParahQuranTranslationText: allParahQuranTranslationText,
                index: index,
                quranReciterMainData: quranReciterMainData,
                state: state,
              );
            },
          );
        }
      },
    );
  }
}
