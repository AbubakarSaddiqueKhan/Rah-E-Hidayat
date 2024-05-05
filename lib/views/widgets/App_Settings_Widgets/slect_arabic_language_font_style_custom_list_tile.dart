import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Arabic_Quran_Stylings_Blocs/CustomArabicQuranTextStylingDropDownMenuBloc/custom_arabic_quran_text_styling_drop_down_menu_bloc.dart';
import 'dart:developer' as developer;

class SelectArabicFontStyleCustomListTileWidget extends StatelessWidget {
  final int index;
  const SelectArabicFontStyleCustomListTileWidget(
      {super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        developer.log("Clicked on : ${arabicQuranFontStyles[index]}");
        context.read<CustomArabicQuranTextStylingDropDownMenuBloc>().add(
            FetchCustomArabicQuranTextStyleFromGivenIndex(
                currentSelectedArabicQuranFontStyleIndex: index));
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
              "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: arabicQuranFontStyles[index],
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
