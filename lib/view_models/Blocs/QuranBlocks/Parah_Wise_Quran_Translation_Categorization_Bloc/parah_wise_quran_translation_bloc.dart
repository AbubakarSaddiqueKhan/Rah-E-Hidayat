import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/complete_quran_translation.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator_data.dart';
import 'package:flutter_quran_api_practice/model/Quran/parah_wise_catgorization_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_translator.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'parah_wise_quran_translation_event.dart';
part 'parah_wise_quran_translation_state.dart';

class ParahWiseQuranTranslationCategorizationBloc extends Bloc<
    ParahWiseQuranTranslationCategorizationEvent,
    ParahWiseQuranTranslationCategorizationState> {
  List<String> allParahQuranicVersesTranslationsList = [];

  ParahWiseQuranTranslationCategorizationBloc()
      : super(ParahWiseQuranTranslationCategorizationInitialState()) {
    on<FetchParahWiseQuranTranslationOfGivenParahNumberEvent>(
        _mapFetchParahWiseQuranTranslationOfGivenParahNumberEventToState);
  }

  FutureOr<void>
      _mapFetchParahWiseQuranTranslationOfGivenParahNumberEventToState(
          FetchParahWiseQuranTranslationOfGivenParahNumberEvent event,
          Emitter<ParahWiseQuranTranslationCategorizationState> emit) async {
    try {
      allParahQuranicVersesTranslationsList = [];

      emit(ParahWiseQuranTranslationCategorizationLoadingState());

      allParahQuranicVersesTranslationsList = [];

      CompleteQuranTranslatorModel completeQuranTranslatorData = QuranTranslator
          .allLanguagesCompleteQuranTranslatorsDataList[event.translatorId - 1];

      CompleteQuranTranslationModel completeQuranTranslationData =
          CompleteQuranTranslationModel.fromJson(
              completeQuranTranslatorData.quranCompleteTranslation);

      allParahQuranicVersesTranslationsList = fetchParahWiseQuranTranslation(
          completeQuranTranslationModel: completeQuranTranslationData,
          parahNumber: event.parahNumber);

      emit(ParahWiseQuranTranslationCategorizationLoadedState(
          allParahQuranTranslationText: allParahQuranicVersesTranslationsList,
          completeQuranTranslatorData: completeQuranTranslatorData));

      allParahQuranicVersesTranslationsList = [];
    } catch (e) {
      emit(ParahWiseQuranTranslationCategorizationErrorState());
    }
  }
}

List<String> fetchParahWiseQuranTranslation(
    {required CompleteQuranTranslationModel completeQuranTranslationModel,
    required int parahNumber}) {
  allParahQuranicVersesTranslationsList = [];

  List<SurahBoundriesInParahModel> currentParaBoundriesData =
      completeQuranTranslationDataBoundries[parahNumber - 1];

  for (var parahWiseQuranBoundriesIndex = 0;
      parahWiseQuranBoundriesIndex < currentParaBoundriesData.length;
      parahWiseQuranBoundriesIndex++) {
    SurahBoundriesInParahModel oneSurahDataModel =
        currentParaBoundriesData[parahWiseQuranBoundriesIndex];

    for (var currentAyahNumber = oneSurahDataModel.startingAyahNumber - 1;
        currentAyahNumber <= oneSurahDataModel.endingAyahNumber - 1;
        currentAyahNumber++) {
      String currentAyahText = completeQuranTranslationModel
          .data
          .surahs[oneSurahDataModel.surahNumber - 1]
          .ayahs[currentAyahNumber]
          .text;

      // allParahQuranicVersesTranslationsList = [];

      allParahQuranicVersesTranslationsList.add(currentAyahText);
    }
  }

  developer.log(
      "Total Verses in First Parah is : ${allParahQuranicVersesTranslationsList.length}");

  developer
      .log("First Verse Text is : ${allParahQuranicVersesTranslationsList[0]}");

  developer.log(
      "Last Verse Text is : ${allParahQuranicVersesTranslationsList.last}");

  return allParahQuranicVersesTranslationsList;
}
