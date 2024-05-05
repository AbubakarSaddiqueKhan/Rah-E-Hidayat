import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/utils/my_custom_colors.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Quran_Translation_Text_Color_Bloc/change_quran_translation_text_color_bloc.dart';

class SelectTranslationLanguageTextColor extends StatelessWidget {
  const SelectTranslationLanguageTextColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 50,
        width: MediaQuery.sizeOf(context).width,
        child: Expanded(
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: quranTextColors.length,
          itemBuilder: (context, index) => InkWell(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  context.read<ChangeQuranTranslationTextColorBloc>().add(
                      FetchCurrentSelectedQuranTranslationTextFromGivenIndexEvent(
                          currentSelectedColorIndex: index));
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: quranTextColors[index], shape: BoxShape.circle),
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
