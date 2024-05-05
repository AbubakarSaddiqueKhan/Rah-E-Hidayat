import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Reciters_Audio_Blocs/Custom_Quran_Reciter_Drop_Down_Bloc/custom_quran_reciter_drop_down_menu_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Reciters_Audio_Blocs/Show_Custom_Quran_Reciter_Dialog_Bloc/show_custom_quran_reciter_dialog_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class ShowOrHideQuranReciterCustomDialogWidget extends StatelessWidget {
  final bool isQuranReciterDialogOpened;
  const ShowOrHideQuranReciterCustomDialogWidget(
      {super.key, required this.isQuranReciterDialogOpened});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        developer.log("Clicked");
        context.read<ShowCustomQuranReciterDialogBloc>().add(
            OpenOrCloseQuranReciterDialogEvent(
                isDialogOpened: isQuranReciterDialogOpened));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<CustomQuranReciterDropDownMenuBloc,
                  CustomQuranReciterDropDownMenuState>(
                builder: (context, state) {
                  if (state is CustomQuranReciterDropDownMenuInitialState) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        currentSelectedQuranReciterName,
                        style: const TextStyle(
                          fontFamily: "Archivo",
                          color: Colors.cyan,
                        ),
                      ),
                    );
                  } else if (state
                      is CustomQuranReciterDropDownMenuLoadingState) {
                    return const CircularProgressIndicator();
                  } else if (state
                      is CustomQuranReciterDropDownMenuLoadedState) {
                    quranReciterMainData = state.quranReciterData;

                    currentSelectedQuranReciterName =
                        state.quranReciterData.reciterName;

                    developer.log(
                        "Current selected is ........ ${state.quranReciterData}");

                    developer.log(
                        "Current Updated State is ...... $quranReciterMainData");
                    context.read<ShowCustomQuranReciterDialogBloc>().add(
                        OpenOrCloseQuranReciterDialogEvent(
                            isDialogOpened: isQuranReciterDialogOpened));

                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        currentSelectedQuranReciterName,
                        style: const TextStyle(
                            fontFamily: "Archivo", color: Colors.white),
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
    );
  }
}
