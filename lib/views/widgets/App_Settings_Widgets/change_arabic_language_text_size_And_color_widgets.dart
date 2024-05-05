import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/change_arabic_language_text_size_and_color_bloc_builder_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/change_arabic_language_text_size_slider_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_arabic_language_text_color_text_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/slect_arabic_language_text_color_custom_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/slect_arabic_language_text_size_text_widget.dart';

class ChangeArabicLanguageTextSizeAndColorWidgets extends StatelessWidget {
  const ChangeArabicLanguageTextSizeAndColorWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        SelectArabicLanguageTextColorTextWidget(),
        SizedBox(
          height: 10,
        ),
        ChangeArabicLanguageTextSizeAndColorBlockBuilderWidget(),
        SelectArabicLanguageTextColorCustomWidget(),
        SizedBox(
          height: 10,
        ),
        SelectArabicLanguageTextSizeTextWidget(),
        SizedBox(
          height: 10,
        ),
        ChangeArabicLanguageTextSizeSliderWidget(),
      ],
    );
  }
}
