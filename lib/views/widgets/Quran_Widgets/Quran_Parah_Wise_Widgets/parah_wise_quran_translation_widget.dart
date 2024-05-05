import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Parah_Wise_Quran_Translation_Categorization_Bloc/parah_wise_quran_translation_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Parah_Wise_Widgets/quran_parah_wise_custom_text_widgets.dart';

class ParahWiseQuranTranslationCustomWidget extends StatelessWidget {
  List<String> allParahQuranTranslationText;
  final int index;
  ParahWiseQuranTranslationCustomWidget(
      {super.key,
      required this.allParahQuranTranslationText,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        AnimatedScale(
          scale: currentTranslationShowingState == true ? 1 : 0,
          duration: const Duration(milliseconds: 400),
          child: BlocBuilder<ParahWiseQuranTranslationCategorizationBloc,
              ParahWiseQuranTranslationCategorizationState>(
            builder: (context, state) {
              if (state
                  is ParahWiseQuranTranslationCategorizationInitialState) {
                developer.log("Parah categorization initiall .... ");
                return const SizedBox.shrink();
              } else if (state
                  is ParahWiseQuranTranslationCategorizationLoadingState) {
                developer.log("Parah categorization Loadinggggggg .... ");
                return const SizedBox.shrink();
              } else if (state
                  is ParahWiseQuranTranslationCategorizationLoadedState) {
                developer.log("Parah categorization Loadeded .... ");
                allParahQuranTranslationText =
                    state.allParahQuranTranslationText;
                return QuranParahWiseQuranTranslationCustomTextWidget(
                  allParahQuranTranslationText: allParahQuranTranslationText,
                  index: index,
                  state: state,
                );
              } else {
                developer.log("Parah categorization errorrr .... ");
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ],
    );
  }
}
