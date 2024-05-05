import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/utils/my_custom_colors.dart';
import 'package:meta/meta.dart';

part 'change_arabic_quran_text_color_event.dart';
part 'change_arabic_quran_text_color_state.dart';

class ChangeArabicQuranTextColorBloc extends Bloc<
    ChangeArabicQuranTextColorEvent, ChangeArabicQuranTextColorState> {
  ChangeArabicQuranTextColorBloc()
      : super(ChangeArabicQuranTextColorInitialState()) {
    on<FetchCurrentSelectedArabicQuranTextFromGivenIndexEvent>(
        _mapFetchCurrentSelectedArabicQuranTextFromGivenIndexEventToStates);
  }

  FutureOr<void>
      _mapFetchCurrentSelectedArabicQuranTextFromGivenIndexEventToStates(
          FetchCurrentSelectedArabicQuranTextFromGivenIndexEvent event,
          Emitter<ChangeArabicQuranTextColorState> emit) async {
    try {
      emit(ChangeArabicQuranTextColorLoadingState());

      Color currentSelectedArabicQuranTextColor =
          quranTextColors[event.currentSelectedColorIndex];

      emit(ChangeArabicQuranTextColorLoadedState(
          currentSelectedArabicQuranTextColor:
              currentSelectedArabicQuranTextColor));
    } catch (e) {
      emit(ChangeArabicQuranTextColorErrorState());
    }
  }
}
