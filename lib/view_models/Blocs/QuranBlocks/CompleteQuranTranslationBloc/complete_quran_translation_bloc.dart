import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator_data.dart';
import 'package:flutter_quran_api_practice/model/Quran/complete_quran_translation.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'complete_quran_translation_event.dart';
part 'complete_quran_translation_state.dart';

class CompleteQuranTranslationBloc
    extends Bloc<CompleteQuranTranslationEvent, CompleteQuranTranslationState> {
  CompleteQuranTranslationBloc()
      : super(CompleteQuranTranslationInitialState()) {
    on<FetchCompleteQuranTranslationEvent>(
        fetchCompleteQuranTranslationEventToStates);
  }

  FutureOr<void> fetchCompleteQuranTranslationEventToStates(
      FetchCompleteQuranTranslationEvent event,
      Emitter<CompleteQuranTranslationState> emit) {
    try {
      emit(CompleteQuranTranslationLoadingState());

      CompleteQuranTranslatorModel completeQuranTranslatorData = QuranTranslator
          .allLanguagesCompleteQuranTranslatorsDataList[event.translatorId - 1];

      CompleteQuranTranslationModel completeQuranTranslationData =
          CompleteQuranTranslationModel.fromJson(
              completeQuranTranslatorData.quranCompleteTranslation);

      emit(CompleteQuranTranslationLoadedState(
          quranTranslatorData: completeQuranTranslatorData,
          completeQuranTranslationData: completeQuranTranslationData));
    } catch (e) {
      developer.log("Errros is ........ ${e.toString()}");
      emit(CompleteQuranTranslationErrorState());
    }
  }
}
