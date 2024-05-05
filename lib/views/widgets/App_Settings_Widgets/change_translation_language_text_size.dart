import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Quran_Translation_Text_Size_Bloc/change_quran_translation_text_size_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class ChangeTranslationLanguageTextSizeSliderWidget extends StatelessWidget {
  const ChangeTranslationLanguageTextSizeSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeQuranTranslationTextSizeBloc,
        ChangeQuranTranslationTextSizeState>(
      builder: (context, state) {
        if (state is ChangeQuranTranslationTextSizeInitialState) {
        } else if (state is ChangeQuranTranslationTextSizeLoadingState) {
        } else if (state is ChangeQuranTranslationTextSizeLoadedState) {
          currentQuranTranslationFontSizeMainData =
              state.currentQuranTranslationFontSize;
        } else {}
        return Slider(
          value: currentQuranTranslationFontSizeMainData,
          min: 0,
          max: 100,
          label: currentQuranTranslationFontSizeMainData.round().toString(),
          onChanged: (double value) {
            context.read<ChangeQuranTranslationTextSizeBloc>().add(
                ChangeQuranTranslationTextSizeFromGivenValueOfSliderEvent(
                    currentQuranTranslationFontSize: value));
          },
        );
      },
    );
  }
}
