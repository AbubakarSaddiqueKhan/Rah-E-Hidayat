import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_or_hide_quran_translation_event.dart';
part 'show_or_hide_quran_translation_state.dart';

class ShowOrHideQuranTranslationBloc extends Bloc<
    ShowOrHideQuranTranslationEvent, ShowOrHideQuranTranslationState> {
  ShowOrHideQuranTranslationBloc()
      : super(const ShowOrHideQuranTranslationInitialState(
            showOrHideQuranTranslationUpdatedCurrentValue: true)) {
    on<ChangeShowOrHideQuranTranslationValueEvent>(
        _mapChangeShowOrHideQuranTranslationValueEventToStates);
  }

  FutureOr<void> _mapChangeShowOrHideQuranTranslationValueEventToStates(
      ChangeShowOrHideQuranTranslationValueEvent event,
      Emitter<ShowOrHideQuranTranslationState> emit) {
    try {
      bool isQuranTranslationCurrentlyDisplaying =
          event.isTranslationCurrentlyShowing;
      isQuranTranslationCurrentlyDisplaying =
          isQuranTranslationCurrentlyDisplaying;
      emit(ShowOrHideQuranTranslationLoadingState(
          showOrHideQuranTranslationUpdatedCurrentValue:
              isQuranTranslationCurrentlyDisplaying));

      emit(ShowOrHideQuranTranslationLoadedState(
          showOrHideQuranTranslationUpdatedCurrentValue:
              isQuranTranslationCurrentlyDisplaying));
    } catch (e) {
      emit(ShowOrHideQuranTranslationErrorState());
    }
  }
}
