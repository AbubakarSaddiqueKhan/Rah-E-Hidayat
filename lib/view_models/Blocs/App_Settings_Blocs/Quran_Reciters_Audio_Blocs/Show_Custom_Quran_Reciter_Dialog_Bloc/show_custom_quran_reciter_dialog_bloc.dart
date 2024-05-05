import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_custom_quran_reciter_dialog_event.dart';
part 'show_custom_quran_reciter_dialog_state.dart';

class ShowCustomQuranReciterDialogBloc extends Bloc<
    ShowCustomQuranReciterDialogEvent, ShowCustomQuranReciterDialogState> {
  ShowCustomQuranReciterDialogBloc()
      : super(const ShowCustomQuranReciterDialogInitialState(
            isCustomDialogOpened: false)) {
    on<OpenOrCloseQuranReciterDialogEvent>(
        _mapOpenCloseCustomDialogEventToStates);
  }

  FutureOr<void> _mapOpenCloseCustomDialogEventToStates(
      OpenOrCloseQuranReciterDialogEvent event,
      Emitter<ShowCustomQuranReciterDialogState> emit) {
    try {
      bool isDialogOpened = event.isDialogOpened;
      isDialogOpened = !isDialogOpened;

      emit(ShowCustomQuranReciterDialogLoadingState(
          isCustomDialogOpened: isDialogOpened));

      emit(ShowCustomQuranReciterDialogLoadedState(
          isCustomDialogOpened: isDialogOpened));
    } catch (e) {
      emit(ShowCustomQuranReciterDialogErrorState());
    }
  }
}
