import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Reciters_Audio_Blocs/Show_Custom_Quran_Reciter_Dialog_Bloc/show_custom_quran_reciter_dialog_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_quran_reciter_custom_list_tile_widget.dart';

class SelectQuranReciterCustomDialogWidget extends StatelessWidget {
  bool isQuranReciterDialogOpened;
  SelectQuranReciterCustomDialogWidget(
      {super.key, required this.isQuranReciterDialogOpened});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowCustomQuranReciterDialogBloc,
        ShowCustomQuranReciterDialogState>(
      builder: (context, state) {
        if (state is ShowCustomQuranReciterDialogInitialState) {
          isQuranReciterDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is closed");
        } else if (state is ShowCustomQuranReciterDialogLoadingState) {
          isQuranReciterDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is opened");
        } else if (state is ShowCustomQuranReciterDialogLoadedState) {
          isQuranReciterDialogOpened = state.isCustomDialogOpened;
          developer.log("Dialog is opened.........");
        } else {
          developer.log("Errrrrrr.........");
        }
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: isQuranReciterDialogOpened ? 250 : 0,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  )),
              alignment: Alignment.centerLeft,
              child: ListView.builder(
                itemCount: quranReciterDataList.length,
                itemBuilder: (context, index) {
                  return SelectQuranReciterCustomListTileWidget(
                    index: index,
                  );
                },
              )),
        );
      },
    );
  }
}
