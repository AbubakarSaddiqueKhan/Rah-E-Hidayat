import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_books.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_chapters_data.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_data.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_edition_data_model.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'all_hadith_data_event.dart';
part 'all_hadith_data_state.dart';

class AllHadithDataBloc extends Bloc<AllHadithDataEvent, AllHadithDataState> {
  AllHadithDataBloc() : super(AllHadithDataInitialState()) {
    on<FetchHadithDataOfGivenChapterNumberAndBookIdEvent>(
        _mapFetchHadithDataOfGivenChapterNumberAndBookIdEventToStates);
  }

  FutureOr<void> _mapFetchHadithDataOfGivenChapterNumberAndBookIdEventToStates(
      FetchHadithDataOfGivenChapterNumberAndBookIdEvent event,
      Emitter<AllHadithDataState> emit) async {
    try {
      emit(AllHadithDataLoadingState());

      developer.log(
          "Incommming data ... ${event.chapterWiseHadithBoundriesData.toString()} , ..... ${event.hadithBookData.toString()}");

      // Arabic text

      HadithEditionDataModel arabicHadithData = HadithEditionDataModel.fromJson(
          event.hadithBookData.completeHadithBookArabicJson);

      List<String> arabicHadithTextList =
          fetchAllHadithOfGivenHadithBookWithTheirGivenChapterNumber(
              hadithEditionData: arabicHadithData,
              hadithBoundaries: event.chapterWiseHadithBoundriesData);

// Translated text .

      HadithEditionDataModel translatedHadithData =
          HadithEditionDataModel.fromJson(
              event.hadithBookData.completeHadithBookTranslatedJson);

      List<String> translatedHadithTextList =
          fetchAllHadithOfGivenHadithBookWithTheirGivenChapterNumber(
              hadithEditionData: translatedHadithData,
              hadithBoundaries: event.chapterWiseHadithBoundriesData);

      // hadith numbering .

      List<num> hadithNumberingList =
          fetchAllHadithNumbersOfGivenHadithBookWithTheirGivenChapterNumber(
              hadithEditionData: translatedHadithData,
              hadithBoundaries: event.chapterWiseHadithBoundriesData);

      HadithData hadithData = HadithData(
          hadithNumbersList: hadithNumberingList,
          arabicHadithTextList: arabicHadithTextList,
          translatedHadithTextList: translatedHadithTextList,
          translatedHadithTextDirection: event.hadithBookData
              .hadithBookNameInTheirTranslatedLanguageTextDirection,
          translatedHadithFontStyleName:
              event.hadithBookData.translatedLanguageFontStyleName);

      developer.log(
          "arabic ..... ${hadithData.arabicHadithTextList.length} , translated ...... ${hadithData.translatedHadithTextList.length} , total hadith length ... ${hadithData.hadithNumbersList.length}");

      emit(AllHadithDataLoadedState(hadithData: hadithData));
    } catch (e) {
      developer.log("Errrorrrrrrrrrr is .......... ${e.toString()}");
      emit(AllHadithDataErrorState());
    }
  }
}

List<String> fetchAllHadithOfGivenHadithBookWithTheirGivenChapterNumber(
    {required HadithEditionDataModel hadithEditionData,
    required ChapterWiseHadithBoundriesDataModel hadithBoundaries}) {
  List<String> allHadithOfGivenChapterNumber = [];
  for (var currentHadithNumber = hadithBoundaries.startingHadithNumber;
      currentHadithNumber <= hadithBoundaries.endingHadithNumber;
      currentHadithNumber++) {
    allHadithOfGivenChapterNumber
        .add(hadithEditionData.hadiths[currentHadithNumber - 1].text);
  }

  return allHadithOfGivenChapterNumber;
}

List<num> fetchAllHadithNumbersOfGivenHadithBookWithTheirGivenChapterNumber(
    {required HadithEditionDataModel hadithEditionData,
    required ChapterWiseHadithBoundriesDataModel hadithBoundaries}) {
  List<num> allHadithOfGivenChapterNumber = [];
  for (var currentHadithNumber = hadithBoundaries.startingHadithNumber;
      currentHadithNumber <= hadithBoundaries.endingHadithNumber;
      currentHadithNumber++) {
    allHadithOfGivenChapterNumber
        .add(hadithEditionData.hadiths[currentHadithNumber - 1].hadithnumber);
  }

  return allHadithOfGivenChapterNumber;
}
