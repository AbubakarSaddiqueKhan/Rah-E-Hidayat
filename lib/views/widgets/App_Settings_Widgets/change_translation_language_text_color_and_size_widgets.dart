import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/change_translation_language_text_size.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/change_translation_language_text_size_and_color_block_builder_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_translation_langiage_text_color_text_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_translation_language_text_color.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_translation_text_size_text_widget.dart';

class ChangeTranslationLanguageTextSizeAndColorWidgets extends StatelessWidget {
   const ChangeTranslationLanguageTextSizeAndColorWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         SizedBox(
          height: 10,
        ),
         SelectTranslationLanguageTextColorTextWidget(),
         SizedBox(
          height: 10,
        ),
         ChangeTranslationLanguageTextSizeAndColorBlockBuilderWidget(),
         SelectTranslationLanguageTextColor(),
         SizedBox(
          height: 10,
        ),
         SelectTranslationTextSizeTextWidget(),
         SizedBox(
          height: 10,
        ),
         ChangeTranslationLanguageTextSizeSliderWidget(),
      ],
    );
  }
}
