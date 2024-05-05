import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:meta/meta.dart';

part 'custom_quran_reciter_drop_down_menu_event.dart';
part 'custom_quran_reciter_drop_down_menu_state.dart';

class CustomQuranReciterDropDownMenuBloc extends Bloc<
    CustomQuranReciterDropDownMenuEvent, CustomQuranReciterDropDownMenuState> {
  CustomQuranReciterDropDownMenuBloc()
      : super(CustomQuranReciterDropDownMenuInitialState()) {
    on<FetchQuranReciterDropDownMenuValueFromIndexEvent>(
        _mapFetchDropDownMenuValueFromIndexEventToStates);
  }

  FutureOr<void> _mapFetchDropDownMenuValueFromIndexEventToStates(
      FetchQuranReciterDropDownMenuValueFromIndexEvent event,
      Emitter<CustomQuranReciterDropDownMenuState> emit) {
    try {
      emit(CustomQuranReciterDropDownMenuLoadingState());

      QuranReciterModel currentSelectedValue =
          quranReciterDataList[event.index];

      emit(CustomQuranReciterDropDownMenuLoadedState(
          quranReciterData: currentSelectedValue));
    } catch (e) {
      emit(CustomQuranReciterDropDownMenuErrorState());
    }
  }
}
