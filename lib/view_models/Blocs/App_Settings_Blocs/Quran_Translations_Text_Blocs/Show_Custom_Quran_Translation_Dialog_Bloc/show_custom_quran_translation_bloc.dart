import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_custom_quran_translation_event.dart';
part 'show_custom_quran_translation_state.dart';

class ShowCustomQuranTranslationBloc extends Bloc<
    ShowCustomQuranTranslationEvent, ShowCustomQuranTranslationState> {
  ShowCustomQuranTranslationBloc()
      : super(const ShowCustomQuranTranslationInitialState(
            isCustomDialogOpened: false)) {
    on<OpenOrCloseQuranTranslationsDialogEvent>(
        _mapOpenCloseCustomTranslationDialogEventToStates);
  }

  FutureOr<void> _mapOpenCloseCustomTranslationDialogEventToStates(
      OpenOrCloseQuranTranslationsDialogEvent event,
      Emitter<ShowCustomQuranTranslationState> emit) async {
    try {
      bool isDialogOpened = event.isDialogOpened;
      isDialogOpened = !isDialogOpened;

      emit(ShowCustomQuranTranslationLoadingState(
          isCustomDialogOpened: isDialogOpened));

      emit(ShowCustomQuranTranslationLoadedState(
          isCustomDialogOpened: isDialogOpened));
    } catch (e) {
      emit(ShowCustomQuranTranslationErrorState());
    }
  }
}
