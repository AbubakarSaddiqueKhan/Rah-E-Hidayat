import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_quran_translation_text_size_event.dart';
part 'change_quran_translation_text_size_state.dart';

class ChangeQuranTranslationTextSizeBloc extends Bloc<
    ChangeQuranTranslationTextSizeEvent, ChangeQuranTranslationTextSizeState> {
  ChangeQuranTranslationTextSizeBloc()
      : super(ChangeQuranTranslationTextSizeInitialState()) {
    on<ChangeQuranTranslationTextSizeFromGivenValueOfSliderEvent>(
        mapChangeQuranTranslationTextSizeFromGivenValueOfSliderEventToStates);
  }

  FutureOr<void>
      mapChangeQuranTranslationTextSizeFromGivenValueOfSliderEventToStates(
          ChangeQuranTranslationTextSizeFromGivenValueOfSliderEvent event,
          Emitter<ChangeQuranTranslationTextSizeState> emit) async {
    try {
      emit(ChangeQuranTranslationTextSizeLoadingState());
      double currentQuranTranslationFontSize =
          event.currentQuranTranslationFontSize;

      emit(ChangeQuranTranslationTextSizeLoadedState(
          currentQuranTranslationFontSize: currentQuranTranslationFontSize));
    } catch (e) {
      emit(ChangeQuranTranslationTextSizeErrorState());
    }
  }
}
