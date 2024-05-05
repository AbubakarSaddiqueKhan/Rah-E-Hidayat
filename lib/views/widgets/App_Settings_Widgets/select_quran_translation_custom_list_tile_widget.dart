import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator_data.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Translations_Text_Blocs/Custom_Quran_Translation_Drop_Down_Bloc/custom_quran_translation_drop_down_menu_bloc.dart';
import 'dart:developer' as developer;

class SelectQuranTranslationCustomListTileWidget extends StatelessWidget {
  final int index;
  const SelectQuranTranslationCustomListTileWidget(
      {super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        developer.log(
            "Clicked on : ${QuranTranslator.allLanguagesCompleteQuranTranslatorsDataList[index]}");
        context.read<CustomQuranTranslationDropDownMenuBloc>().add(
            FetchQuranTranslationDropDownMenuValueFromIndexEvent(index: index));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 2, bottom: 2),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "${QuranTranslator.allLanguagesCompleteQuranTranslatorsDataList[index].quranTranslationLanguageName} - ${QuranTranslator.allLanguagesCompleteQuranTranslatorsDataList[index].quranTranslatorName}",
              style:
                  const TextStyle(fontFamily: "Archivo", color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
