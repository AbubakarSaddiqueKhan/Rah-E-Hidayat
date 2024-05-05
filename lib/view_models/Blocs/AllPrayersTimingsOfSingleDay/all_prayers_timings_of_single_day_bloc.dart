import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';

import 'package:flutter_quran_api_practice/model/Islamic_Conversions/prayers_timings_of_single_day.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/PrayersTimingsApiService/all_prayers_timmings_of_single_day_api_service.dart';

part 'all_prayers_timings_of_single_day_event.dart';
part 'all_prayers_timings_of_single_day_state.dart';

class AllPrayersTImingsOfSingleDayBloc extends Bloc<
    AllPrayersTImingsOfSingleDayEvent, AllPrayersTimingsOfSingleDayState> {
  AllPrayersTimingOfDayApiService allPrayersTimingOfDayApiService =
      AllPrayersTimingOfDayApiService();
  AllPrayersTImingsOfSingleDayBloc()
      : super(AllPrayersTimingsOfSingleDayInitialState()) {
    on<FetchAllPrayerTimingOfSingleDayEvent>(
        _mapAllDayPrayerTimingEventsToStates);
  }

  FutureOr<void> _mapAllDayPrayerTimingEventsToStates(
      FetchAllPrayerTimingOfSingleDayEvent event,
      Emitter<AllPrayersTimingsOfSingleDayState> emit) async {
    try {
      emit(AllPrayersTimingsOfSingleDayLoadingState());

      DateTime currentDateTime = DateTime.now();

      FormattedDate formattedDate = FormattedDate(
          day: currentDateTime.day,
          month: currentDateTime.month,
          year: currentDateTime.year);

      double latValue = event.currentUserPosition.latitude;
      double longValue = event.currentUserPosition.longitude;

      var dataRecord = (formattedDate, latValue, longValue);

      AllPrayersTimingOfDayModel allPrayersTimingOfDay =
          await allPrayersTimingOfDayApiService
              .fetchAllPrayersTimingOfGivenDay(dataRecord);

      emit(AllPrayersTimingsOfSingleDayLoadedState(
          allPrayersTimingOfDay: allPrayersTimingOfDay));
    } catch (e) {
      emit(AllPrayersTimingsOfSingleDayErrorState());
    }
  }
}
