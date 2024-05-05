import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


part 'change_arabic_quran_text_size_event.dart';
part 'change_arabic_quran_text_size_state.dart';

class ChangeArabicQuranTextSizeBloc extends Bloc<ChangeArabicQuranTextSizeEvent,
    ChangeArabicQuranTextSizeState> {
  ChangeArabicQuranTextSizeBloc()
      : super(ChangeArabicQuranTextSizeInitialState()) {
    on<ChangeArabicQuranTextSizeFromGivenValueOfSlider>(
        _mapChangeArabicQuranTextSizeFromGivenValueOfSliderEventToStates);
  }

  FutureOr<void>
      _mapChangeArabicQuranTextSizeFromGivenValueOfSliderEventToStates(
          ChangeArabicQuranTextSizeFromGivenValueOfSlider event,
          Emitter<ChangeArabicQuranTextSizeState> emit) async {
    try {
      emit(ChangeArabicQuranTextSizeLoadingState());

      // developer.log("Inputteddd size is : ${event.currentArabicQuranFontSize}");

      double currentArabicQuranFontSize = event.currentArabicQuranFontSize;

      // developer.log("Uodateddddddddd size ....... $currentArabicQuranFontSize");

      emit(ChangeArabicQuranTextSizeLoadedState(
          currentArabicQuranFontSize: currentArabicQuranFontSize));
    } catch (e) {
      emit(ChangeArabicQuranTextSizeErrorState());
    }
  }
}
