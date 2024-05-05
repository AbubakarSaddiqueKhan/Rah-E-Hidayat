import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/parah.dart';
import 'package:meta/meta.dart';

part 'quran_all_parah_local_data_event.dart';
part 'quran_all_parah_local_data_state.dart';

class QuranAllParahLocalDataBloc
    extends Bloc<QuranAllParahLocalDataEvent, QuranAllParahLocalDataState> {
  QuranAllParahLocalDataBloc() : super(QuranAllParahLocalDataInitialState()) {
    on<QuranAllParahLocalDataEvent>(_mapFetchAllParahOfQuranEventToStates);
  }

  FutureOr<void> _mapFetchAllParahOfQuranEventToStates(
      QuranAllParahLocalDataEvent event,
      Emitter<QuranAllParahLocalDataState> emit) {
    try {
      emit(QuranAllParahLocalDataLoadingState());
      emit(QuranAllParahLocalDataLoadedState(
          allParahDataList: allParahDataList));
    } catch (e) {
      emit(QuranAllParahLocalDataErrorState());
    }
  }
}
