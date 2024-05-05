import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'custom_quran_translation_drop_down_menu_event.dart';
part 'custom_quran_translation_drop_down_menu_state.dart';

class CustomQuranTranslationDropDownMenuBloc extends Bloc<
    CustomQuranTranslationDropDownMenuEvent,
    CustomQuranTranslationDropDownMenuState> {
  CustomQuranTranslationDropDownMenuBloc()
      : super(CustomQuranTranslationDropDownMenuInitialState()) {
    on<FetchQuranTranslationDropDownMenuValueFromIndexEvent>(
        _mapFetchDropDownMenuValueFromIndexEventToStates);
  }

  FutureOr<void> _mapFetchDropDownMenuValueFromIndexEventToStates(
      FetchQuranTranslationDropDownMenuValueFromIndexEvent event,
      Emitter<CustomQuranTranslationDropDownMenuState> emit) async {
    try {
      emit(CustomQuranTranslationDropDownMenuLoadingState());

      int selectQuranTranslationId = event.index;

      emit((CustomQuranTranslationDropDownMenuLoadedState(
          selectQuranTranslationId: selectQuranTranslationId + 1)));
    } catch (e) {
      emit(CustomQuranTranslationDropDownMenuErrorState());
    }
  }
}
