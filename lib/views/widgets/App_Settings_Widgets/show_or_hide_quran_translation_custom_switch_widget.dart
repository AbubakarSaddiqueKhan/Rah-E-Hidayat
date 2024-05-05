import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Translations_Text_Blocs/Show_Custom_Quran_Translation_Dialog_Bloc/show_custom_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/ShowOrHideQuranTranslationBloc/show_or_hide_quran_translation_bloc.dart';
import 'dart:developer' as developer;

class ShowOrHideQuranTranslationCustomSwitchWidget extends StatelessWidget {
  bool currentTranslationShowingState;
  MaterialStateProperty<Icon?>? thumbIcon;
  ShowOrHideQuranTranslationCustomSwitchWidget(
      {super.key,
      required this.currentTranslationShowingState,
      required this.thumbIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Show Quran Translation",
            style: TextStyle(
              fontFamily: "Archivo",
              color: Colors.green,
            ),
          ),
          BlocBuilder<ShowOrHideQuranTranslationBloc,
              ShowOrHideQuranTranslationState>(
            builder: (context, state) {
              if (state is ShowOrHideQuranTranslationInitialState) {
                developer.log("Show initiallllll");
              } else if (state is ShowCustomQuranTranslationLoadingState) {
                developer.log("Show loadingggg");
              } else if (state is ShowOrHideQuranTranslationLoadedState) {
                currentTranslationShowingState =
                    state.showOrHideQuranTranslationUpdatedCurrentValue;

                developer.log("Show loadeddddddd");
              } else {
                developer.log("Errrror...........rrrr");
              }
              return Switch(
                thumbIcon: thumbIcon,
                value: currentTranslationShowingState,
                thumbColor: const MaterialStatePropertyAll(Colors.green),
                activeColor: Colors.amber,
                onChanged: (bool value) {
                  context.read<ShowOrHideQuranTranslationBloc>().add(
                      ChangeShowOrHideQuranTranslationValueEvent(
                          isTranslationCurrentlyShowing: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
