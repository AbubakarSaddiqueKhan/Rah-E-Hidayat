import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Supplications/supplications_categories_data_model.dart';
import 'package:meta/meta.dart';

part 'all_supplications_categories_data_event.dart';
part 'all_supplications_categories_data_state.dart';

class AllSupplicationsCategoriesDataBloc extends Bloc<
    AllSupplicationsCategoriesDataEvent, AllSupplicationsCategoriesDataState> {
  AllSupplicationsCategoriesDataBloc()
      : super(AllSupplicationsCategoriesDataInitialState()) {
    on<FetchAllSupplicationsCategoriesEvent>(
        _mapFetchAllSupplicationsCategoriesDataEventToStates);
  }

  FutureOr<void> _mapFetchAllSupplicationsCategoriesDataEventToStates(
      FetchAllSupplicationsCategoriesEvent event,
      Emitter<AllSupplicationsCategoriesDataState> emit) async {
    try {
      emit(AllSupplicationsCategoriesDataLoadingState());

      emit(AllSupplicationsCategoriesDataLoadedState(
          supplicationCategoriesData:
              SupplicationCategoriesData.allSupplicationsCategoriesDataList));
    } catch (e) {
      emit(AllSupplicationsCategoriesDataErrorState());
    }
  }
}
