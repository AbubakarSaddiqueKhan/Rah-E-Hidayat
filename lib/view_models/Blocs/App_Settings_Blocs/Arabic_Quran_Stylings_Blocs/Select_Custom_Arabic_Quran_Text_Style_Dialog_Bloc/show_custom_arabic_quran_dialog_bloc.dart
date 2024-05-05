import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_custom_arabic_quran_dialog_event.dart';
part 'show_custom_arabic_quran_dialog_state.dart';

class ShowCustomArabicQuranFontStylingDialogBloc extends Bloc<
    ShowCustomArabicQuranDialogEvent, ShowCustomArabicQuranDialogState> {
  ShowCustomArabicQuranFontStylingDialogBloc()
      : super(const ShowCustomArabicQuranDialogInitialState(
            isCustomDialogOpened: false)) {
    on<OpenOrCloseArabicQuranFontStyleChangeDialogEvent>(
        _mapOpenOrCloseArabicQuranFontStyleChangeDialogEventToStates);
  }

  FutureOr<void> _mapOpenOrCloseArabicQuranFontStyleChangeDialogEventToStates(
      OpenOrCloseArabicQuranFontStyleChangeDialogEvent event,
      Emitter<ShowCustomArabicQuranDialogState> emit) async {
    try {
      bool isDialogOpened = event.isDialogOpened;
      isDialogOpened = !isDialogOpened;

      emit(ShowCustomArabicQuranDialogLoadingState(
          isCustomDialogOpened: isDialogOpened));

      emit(ShowCustomArabicQuranDialogLoadedState(
          isCustomDialogOpened: isDialogOpened));
    } catch (e) {
      emit(const ShowCustomArabicQuranDialogErrorState());
    }
  }
}
