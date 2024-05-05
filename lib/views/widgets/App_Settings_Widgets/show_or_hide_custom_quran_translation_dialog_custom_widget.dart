import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator_data.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Translations_Text_Blocs/Custom_Quran_Translation_Drop_Down_Bloc/custom_quran_translation_drop_down_menu_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Translations_Text_Blocs/Show_Custom_Quran_Translation_Dialog_Bloc/show_custom_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';
import 'dart:developer' as developer;

class ShowOrHideCustomQuranTranslationDialogCustomWidget
    extends StatelessWidget {
  final bool isQuranTranslatorDialogOpened;
  const ShowOrHideCustomQuranTranslationDialogCustomWidget(
      {super.key, required this.isQuranTranslatorDialogOpened});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        developer.log("Clicked");
        context.read<ShowCustomQuranTranslationBloc>().add(
            OpenOrCloseQuranTranslationsDialogEvent(
                isDialogOpened: isQuranTranslatorDialogOpened));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<CustomQuranTranslationDropDownMenuBloc,
                    CustomQuranTranslationDropDownMenuState>(
                  builder: (context, state) {
                    if (state
                        is CustomQuranTranslationDropDownMenuInitialState) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          currentSelectedQuranTranslatorName,
                          maxLines: 1,
                          style: const TextStyle(
                            fontFamily: "Archivo",
                            color: Colors.cyan,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      );
                    } else if (state
                        is CustomQuranTranslationDropDownMenuLoadingState) {
                      return const CircularProgressIndicator();
                    } else if (state
                        is CustomQuranTranslationDropDownMenuLoadedState) {
                      quranTranslatorIdMainData =
                          state.selectQuranTranslationId - 1;

                      currentSelectedQuranTranslatorName = QuranTranslator
                          .allLanguagesCompleteQuranTranslatorsDataList[
                              state.selectQuranTranslationId - 1]
                          .quranTranslatorName;

                      developer.log(
                          "Current selected idd is ........ ${state.selectQuranTranslationId - 1}");

                      developer.log(
                          "Current Updated State is ...... $currentSelectedQuranTranslatorName");
                      context.read<ShowCustomQuranTranslationBloc>().add(
                          OpenOrCloseQuranTranslationsDialogEvent(
                              isDialogOpened: isQuranTranslatorDialogOpened));

                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: FittedBox(
                          child: Text(
                            currentSelectedQuranTranslatorName,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontFamily: "Archivo",
                                overflow: TextOverflow.ellipsis,
                                color: Colors.green),
                          ),
                        ),
                      );
                    } else {
                      return const Text("Error");
                    }
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 28,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
