import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Arabic_Quran_Stylings_Blocs/CustomArabicQuranTextStylingDropDownMenuBloc/custom_arabic_quran_text_styling_drop_down_menu_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Arabic_Quran_Stylings_Blocs/Select_Custom_Arabic_Quran_Text_Style_Dialog_Bloc/show_custom_arabic_quran_dialog_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class ShowOrHideCustomArabicFontStyleDialogCustomWidget
    extends StatelessWidget {
  final bool isArabicQuranFontStylingDialogOpened;
  const ShowOrHideCustomArabicFontStyleDialogCustomWidget(
      {super.key, required this.isArabicQuranFontStylingDialogOpened});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        developer.log("Clicked");

        context.read<ShowCustomArabicQuranFontStylingDialogBloc>().add(
            OpenOrCloseArabicQuranFontStyleChangeDialogEvent(
                isDialogOpened: isArabicQuranFontStylingDialogOpened));
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
                BlocBuilder<CustomArabicQuranTextStylingDropDownMenuBloc,
                    CustomArabicQuranTextStylingDropDownMenuState>(
                  builder: (context, state) {
                    if (state
                        is CustomArabicQuranTextStylingDropDownMenuInitialState) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ",
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily:
                                currentSelectedArabicQuranFontStyleNameMainData,
                            color: Colors.cyan,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      );
                    } else if (state
                        is CustomArabicQuranTextStylingDropDownMenuLoadingState) {
                      return const CircularProgressIndicator();
                    } else if (state
                        is CustomArabicQuranTextStylingDropDownMenuLoadedState) {
                      currentSelectedArabicQuranFontStyleNameMainData =
                          state.currentSelectedArabicQuranFontStyleName;

                      developer.log(
                          "Current selected idd is ........ ${state.currentSelectedArabicQuranFontStyleName}");

                      developer.log(
                          "Current Updated State is ...... $currentSelectedArabicQuranFontStyleNameMainData");
                      context
                          .read<ShowCustomArabicQuranFontStylingDialogBloc>()
                          .add(OpenOrCloseArabicQuranFontStyleChangeDialogEvent(
                              isDialogOpened:
                                  isArabicQuranFontStylingDialogOpened));

                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: FittedBox(
                          child: Text(
                            "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily:
                                    currentSelectedArabicQuranFontStyleNameMainData,
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
