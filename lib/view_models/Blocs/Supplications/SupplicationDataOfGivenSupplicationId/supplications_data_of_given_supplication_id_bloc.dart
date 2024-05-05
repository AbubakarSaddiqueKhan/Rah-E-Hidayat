import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Supplications/supplications_categories_data_model.dart';
import 'package:flutter_quran_api_practice/model/Supplications/supplications_data.dart';
import 'package:flutter_quran_api_practice/model/Supplications/zikar_o_azkar_model.dart';
import 'package:meta/meta.dart';

part 'supplications_data_of_given_supplication_id_event.dart';
part 'supplications_data_of_given_supplication_id_state.dart';

class SupplicationsDataOfGivenSupplicationIdBloc extends Bloc<
    SupplicationsDataOfGivenSupplicationIdEvent,
    SupplicationsDataOfGivenSupplicationIdState> {
  SupplicationsDataOfGivenSupplicationIdBloc()
      : super(SupplicationsDataOfGivenSupplicationIdInitialState()) {
    on<FetchAllSupplicationsOfGivenSupplicationIdEvent>(
        _mapFetchAllSupplicationsOfGivenSupplicationIdEventToStates);
  }

  FutureOr<void> _mapFetchAllSupplicationsOfGivenSupplicationIdEventToStates(
      FetchAllSupplicationsOfGivenSupplicationIdEvent event,
      Emitter<SupplicationsDataOfGivenSupplicationIdState> emit) async {
    try {
      emit(SupplicationsDataOfGivenSupplicationIdLoadingState());

      List<Empty> supplicationData =
          fetchAllSupplicationsDataOfGivenSupplicationId(
              SupplicationsData.supplicationsJsonData,
              event.supplicationCategoryData);

      emit(SupplicationsDataOfGivenSupplicationIdLoadedState(
          supplicationsData: supplicationData));
    } catch (e) {
      emit(SupplicationsDataOfGivenSupplicationIdErrorState());
    }
  }
}

List<Empty> fetchAllSupplicationsDataOfGivenSupplicationId(
    String zikarOAzkarJsonData,
    SupplicationCategoriesData supplicationCategoriesData) {
  ZikarOAzkarModel zikarOAzkarData =
      ZikarOAzkarModel.fromJson(zikarOAzkarJsonData);

  switch (supplicationCategoriesData.supplicationCategoryId) {
    case 1:
      return zikarOAzkarData.tafseerApi;
    case 2:
      return zikarOAzkarData.fluffy;
    case 3:
      return zikarOAzkarData.tentacled;
    case 4:
      return zikarOAzkarData.indigo;
    case 5:
      return zikarOAzkarData.indecent;
    case 6:
      return zikarOAzkarData.sticky;
    case 7:
      return zikarOAzkarData.purple;
    case 8:
      return zikarOAzkarData.empty;

    default:
      return zikarOAzkarData.tafseerApi;
  }
}
