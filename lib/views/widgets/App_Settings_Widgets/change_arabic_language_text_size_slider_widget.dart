import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Arabic_Quran_Text_Size_Bloc/change_arabic_quran_text_size_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class ChangeArabicLanguageTextSizeSliderWidget extends StatelessWidget {
  const ChangeArabicLanguageTextSizeSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeArabicQuranTextSizeBloc,
        ChangeArabicQuranTextSizeState>(
      builder: (context, state) {
        if (state is ChangeArabicQuranTextSizeInitialState) {
        } else if (state is ChangeArabicQuranTextSizeLoadingState) {
        } else if (state is ChangeArabicQuranTextSizeLoadedState) {
          currentArabicQuranFontSizeMainData = state.currentArabicQuranFontSize;
        } else {}
        return Slider(
          value: currentArabicQuranFontSizeMainData,
          min: 0,
          max: 100,
          label: currentArabicQuranFontSizeMainData.round().toString(),
          onChanged: (double value) {
            context.read<ChangeArabicQuranTextSizeBloc>().add(
                ChangeArabicQuranTextSizeFromGivenValueOfSlider(
                    currentArabicQuranFontSize: value));
          },
        );
      },
    );
  }
}
