import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:flutter_quran_api_practice/model/Hadith/all_chapter_wise_data_of_given_hadith_book.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_chapters_data.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'all_chapters_of_hadith_book_event.dart';
part 'all_chapters_of_hadith_book_state.dart';

class AllChaptersOfHadithBookBloc
    extends Bloc<AllChaptersOfHadithBookEvent, AllChaptersOfHadithBookState> {
  AllChaptersOfHadithBookBloc() : super(AllChaptersOfHadithBookInitialState()) {
    on<FetchAllHadithChaptersDataOfGivenHadithBookEvent>(
        _mapFetchAllHadithChaptersDataOfGivenHadithBookEventToStates);
  }

  FutureOr<void> _mapFetchAllHadithChaptersDataOfGivenHadithBookEventToStates(
      FetchAllHadithChaptersDataOfGivenHadithBookEvent event,
      Emitter<AllChaptersOfHadithBookState> emit) async {
    try {
      emit(AllChaptersOfHadithBookLoadingState());

      List<ChapterWiseHadithBoundriesDataModel>
          allChapterWiseBoundariesOfGivenHadithBook =
          getHadithBoundriesFromHadithBookNumber(event.hadithBookNumber);
      AllChapterWiseDataOfGivenHadithBookModel
          allChapterWiseDataOfGivenHadithBookData =
          AllChapterWiseDataOfGivenHadithBookModel(
              allChapterNamesOfGivenHadithBook:
                  allBooksChaptersDataList[event.hadithBookNumber - 1],
              allChapterWiseBoundariesOfGivenHadithBook:
                  allChapterWiseBoundariesOfGivenHadithBook);

      developer.log(
          "Currentlyy ... emittedd dataaaa .... ${allChapterWiseDataOfGivenHadithBookData.allChapterWiseBoundariesOfGivenHadithBook.last.toString()} , total chapter names length is ... ${allChapterWiseDataOfGivenHadithBookData.allChapterNamesOfGivenHadithBook.length.toString()}");

      emit(AllChaptersOfHadithBookLoadedState(
          allChapterWiseDataOfGivenHadithBookData:
              allChapterWiseDataOfGivenHadithBookData));
    } catch (e) {
      emit(AllChaptersOfHadithBookErrorState());
    }
  }
}
