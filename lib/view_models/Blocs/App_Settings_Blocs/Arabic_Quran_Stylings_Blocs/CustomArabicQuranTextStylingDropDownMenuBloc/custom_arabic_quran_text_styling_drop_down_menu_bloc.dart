import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'custom_arabic_quran_text_styling_drop_down_menu_event.dart';
part 'custom_arabic_quran_text_styling_drop_down_menu_state.dart';

class CustomArabicQuranTextStylingDropDownMenuBloc extends Bloc<
    CustomArabicQuranTextStylingDropDownMenuEvent,
    CustomArabicQuranTextStylingDropDownMenuState> {
  CustomArabicQuranTextStylingDropDownMenuBloc()
      : super(CustomArabicQuranTextStylingDropDownMenuInitialState()) {
    on<FetchCustomArabicQuranTextStyleFromGivenIndex>(
        _mapFetchCustomArabicQuranTextStyleFromGivenIndexEventToStates);
  }

  FutureOr<void> _mapFetchCustomArabicQuranTextStyleFromGivenIndexEventToStates(
      FetchCustomArabicQuranTextStyleFromGivenIndex event,
      Emitter<CustomArabicQuranTextStylingDropDownMenuState> emit) async {
    try {
      emit(CustomArabicQuranTextStylingDropDownMenuLoadingState());

      String currentSelectedArabicQuranFontStyleName =
          arabicQuranFontStyles[event.currentSelectedArabicQuranFontStyleIndex];

      emit(CustomArabicQuranTextStylingDropDownMenuLoadedState(
          currentSelectedArabicQuranFontStyleName:
              currentSelectedArabicQuranFontStyleName));
    } catch (e) {
      emit(CustomArabicQuranTextStylingDropDownMenuErrorState());
    }
  }
}

List<String> arabicQuranFontStyles = <String>[
  "Amiri",
  "Saleem",
  "Hafs",
  "Lateef",
  "Nabi",
  "Karim",
  "Kufi",
  "Scheherazade",
  "Uthmani",
  "QCF",
  "Simplified",
  "Traditional"
];
