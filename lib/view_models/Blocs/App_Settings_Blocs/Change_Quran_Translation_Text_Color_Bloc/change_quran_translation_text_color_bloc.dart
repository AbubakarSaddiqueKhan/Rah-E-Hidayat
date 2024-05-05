import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
_Arabic_Quran_Text_Color_Bloc/change_arabic_quran_text_color_bloc.dart';
import 'package:meta/meta.dart';

part 'change_quran_translation_text_color_event.dart';
part 'change_quran_translation_text_color_state.dart';

class ChangeQuranTranslationTextColorBloc extends Bloc<
    ChangeQuranTranslationTextColorEvent,
    ChangeQuranTranslationTextColorState> {
  ChangeQuranTranslationTextColorBloc()
      : super(ChangeQuranTranslationTextColorInitialState()) {
    on<FetchCurrentSelectedQuranTranslationTextFromGivenIndexEvent>(
        _mapFetchCurrentSelectedQuranTranslationTextFromGivenIndexEventToStates);
  }

  FutureOr<void>
      _mapFetchCurrentSelectedQuranTranslationTextFromGivenIndexEventToStates(
          FetchCurrentSelectedQuranTranslationTextFromGivenIndexEvent event,
          Emitter<ChangeQuranTranslationTextColorState> emit) async {
    try {
      emit(ChangeQuranTranslationTextColorLoadingState());

      Color currentSelectedArabicQuranTextColor =
          quranTextColors[event.currentSelectedColorIndex];

      emit(ChangeQuranTranslationTextColorLoadedState(
          currentSelectedQuranTranslationTextColor:
              currentSelectedArabicQuranTextColor));
    } catch (e) {
      emit(ChangeQuranTranslationTextColorErrorState());
    }
  }
}
