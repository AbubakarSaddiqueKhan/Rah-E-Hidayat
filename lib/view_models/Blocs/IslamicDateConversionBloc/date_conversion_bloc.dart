import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Islamic_Conversions/date_conversion_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/DateConversionsApiService/date_conversion_api_service.dart';
import 'package:meta/meta.dart';

part 'date_conversion_event.dart';
part 'date_conversion_state.dart';

class DateConversionBloc
    extends Bloc<DateConversionEvent, DateConversionState> {
  IslamicDateConversionApiService islamicDateConversionApiService =
      IslamicDateConversionApiService();
  DateConversionBloc() : super(DateConversionInitialState()) {
    on<FetchTodayIslamicConvertedDate>(
        _mapFetchTodayIslamicConvertedDateEventToState);
  }

  FutureOr<void> _mapFetchTodayIslamicConvertedDateEventToState(
      FetchTodayIslamicConvertedDate event,
      Emitter<DateConversionState> emit) async {
    try {
      emit(DateConversionLoadingState());
      DateTime currentDateTime = DateTime.now();

      int todayDate = currentDateTime.day;
      int todayMonth = currentDateTime.month;
      int todayYear = currentDateTime.year;

      var dateRecord = (todayDate, todayMonth, todayYear);

      IslamicDateConversionModel islamicConvertedDate =
          await islamicDateConversionApiService.fetchConvertedDate(dateRecord);

      emit(DateConversionLoadedState(convertedDate: islamicConvertedDate));
    } catch (e) {
      emit(DateConversionErrorState());
    }
  }
}
