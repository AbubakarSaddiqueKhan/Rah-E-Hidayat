import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Quran_Translation_Text_Color_Bloc/change_quran_translation_text_color_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Quran_Translation_Text_Size_Bloc/change_quran_translation_text_size_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class ChangeTranslationLanguageTextSizeAndColorBlockBuilderWidget
    extends StatelessWidget {
  const ChangeTranslationLanguageTextSizeAndColorBlockBuilderWidget(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeQuranTranslationTextColorBloc,
        ChangeQuranTranslationTextColorState>(
      builder: (context, state) {
        if (state is ChangeQuranTranslationTextColorInitialState) {
        } else if (state is ChangeQuranTranslationTextColorLoadingState) {
        } else if (state is ChangeQuranTranslationTextColorLoadedState) {
          currentSelectedQuranTranslationTextColorMainData =
              state.currentSelectedQuranTranslationTextColor;
        } else {}
        return BlocBuilder<ChangeQuranTranslationTextSizeBloc,
            ChangeQuranTranslationTextSizeState>(
          builder: (context, state) {
            if (state is ChangeQuranTranslationTextSizeInitialState) {
            } else if (state is ChangeQuranTranslationTextSizeLoadingState) {
            } else if (state is ChangeQuranTranslationTextSizeLoadedState) {
              currentQuranTranslationFontSizeMainData =
                  state.currentQuranTranslationFontSize;
            } else {}
            return Text(
              "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ ",
              style: TextStyle(
                  color: currentSelectedQuranTranslationTextColorMainData,
                  fontSize: currentQuranTranslationFontSizeMainData),
            );
          },
        );
      },
    );
  }
}
