import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_books.dart';
import 'package:meta/meta.dart';

part 'all_hadith_books_data_event.dart';
part 'all_hadith_books_data_state.dart';

class AllHadithBooksDataBloc
    extends Bloc<AllHadithBooksDataEvent, AllHadithBooksDataState> {
  AllHadithBooksDataBloc() : super(AllHadithBooksDataInitialState()) {
    on<FetchAllHadithBooksDataEvent>(_mapFetchAllHadithBooksDataEventToStates);
  }

  FutureOr<void> _mapFetchAllHadithBooksDataEventToStates(
      FetchAllHadithBooksDataEvent event,
      Emitter<AllHadithBooksDataState> emit) async {
    try {
      emit(AllHadithBooksDataLoadingState());

      emit(AllHadithBooksDataLoadedState(
          allHadithBooksDetailsList: HadithBooksDataModel.hadithBooksDetails));
    } catch (e) {
      emit(AllHadithBooksDataErrorState());
    }
  }
}
