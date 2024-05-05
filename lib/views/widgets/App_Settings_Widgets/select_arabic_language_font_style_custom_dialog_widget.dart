import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Arabic_Quran_Stylings_Blocs/CustomArabicQuranTextStylingDropDownMenuBloc/custom_arabic_quran_text_styling_drop_down_menu_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Arabic_Quran_Stylings_Blocs/Select_Custom_Arabic_Quran_Text_Style_Dialog_Bloc/show_custom_arabic_quran_dialog_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/slect_arabic_language_font_style_custom_list_tile.dart';

class SelectArabicLanguageFontStyleCustomDialogWidget extends StatelessWidget {
  bool isArabicQuranFontStylingDialogOpened;
  SelectArabicLanguageFontStyleCustomDialogWidget(
      {super.key, required this.isArabicQuranFontStylingDialogOpened});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowCustomArabicQuranFontStylingDialogBloc,
        ShowCustomArabicQuranDialogState>(
      builder: (context, state) {
        if (state is ShowCustomArabicQuranDialogInitialState) {
          isArabicQuranFontStylingDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is closed");
        } else if (state is ShowCustomArabicQuranDialogLoadingState) {
          isArabicQuranFontStylingDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is opened");
        } else if (state is ShowCustomArabicQuranDialogLoadedState) {
          isArabicQuranFontStylingDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is opened.........");
        } else {
          developer.log("Errrrrrr.........");
        }
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: isArabicQuranFontStylingDialogOpened ? 250 : 0,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  )),
              alignment: Alignment.center,
              child: ListView.builder(
                itemCount: arabicQuranFontStyles.length,
                itemBuilder: (context, index) {
                  return SelectArabicFontStyleCustomListTileWidget(
                    index: index,
                  );
                },
              )),
        );
      },
    );
  }
}
