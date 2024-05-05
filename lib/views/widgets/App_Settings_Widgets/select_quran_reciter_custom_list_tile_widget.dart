import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Reciters_Audio_Blocs/Custom_Quran_Reciter_Drop_Down_Bloc/custom_quran_reciter_drop_down_menu_bloc.dart';
import 'dart:developer' as developer;

class SelectQuranReciterCustomListTileWidget extends StatelessWidget {
  final int index;
  const SelectQuranReciterCustomListTileWidget(
      {super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        developer.log("Clicked on : ${quranReciterDataList[index]}");
        context.read<CustomQuranReciterDropDownMenuBloc>().add(
            FetchQuranReciterDropDownMenuValueFromIndexEvent(index: index));
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
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                quranReciterDataList[index].reciterName,
                textAlign: TextAlign.start,
                style:
                    const TextStyle(fontFamily: "Archivo", color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
