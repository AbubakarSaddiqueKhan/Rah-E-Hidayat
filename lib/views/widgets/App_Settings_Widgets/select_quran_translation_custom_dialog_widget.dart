import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator_data.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Translations_Text_Blocs/Show_Custom_Quran_Translation_Dialog_Bloc/show_custom_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_quran_translation_custom_list_tile_widget.dart';
import 'dart:developer' as developer;

class SelectQuranTranslationCustomDialogWidget extends StatelessWidget {
  bool isQuranTranslatorDialogOpened;
  SelectQuranTranslationCustomDialogWidget(
      {super.key, required this.isQuranTranslatorDialogOpened});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowCustomQuranTranslationBloc,
        ShowCustomQuranTranslationState>(
      builder: (context, state) {
        if (state is ShowCustomQuranTranslationInitialState) {
          isQuranTranslatorDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is closed");
        } else if (state is ShowCustomQuranTranslationLoadingState) {
          isQuranTranslatorDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is opened");
        } else if (state is ShowCustomQuranTranslationLoadedState) {
          isQuranTranslatorDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is opened.........");
        } else {
          developer.log("Errrrrrr.........");
        }
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: isQuranTranslatorDialogOpened ? 250 : 0,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  )),
              alignment: Alignment.center,
              child: ListView.builder(
                itemCount: QuranTranslator
                    .allLanguagesCompleteQuranTranslatorsDataList.length,
                itemBuilder: (context, index) {
                  return SelectQuranTranslationCustomListTileWidget(
                    index: index,
                  );
                },
              )),
        );
      },
    );
  }
}
