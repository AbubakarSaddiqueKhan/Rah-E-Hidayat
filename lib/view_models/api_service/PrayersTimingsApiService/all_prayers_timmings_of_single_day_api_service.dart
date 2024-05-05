import 'package:flutter_quran_api_practice/model/Islamic_Conversions/prayers_timings_of_single_day.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/General_Api_Service/api_service.dart';

class AllPrayersTimingOfDayApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "timings/";

  // https://api.aladhan.com/v1/timings/17-07-2007?latitude=29.396831680889882&longitude=-71.74747169005924

  Future<AllPrayersTimingOfDayModel> fetchAllPrayersTimingOfGivenDay(
      (
        FormattedDate todayFormattedDate,
        double latitudeValueOfUserCurrentLocation,
        double longitudeValueOfUserCurrentLocation
      ) todayDateAndLocation) async {
    FormattedDate formattedDate = todayDateAndLocation.$1;
    String formatCurrentDate =
        "${formattedDate.day}-${formattedDate.month}-${formattedDate.year}";

    String endPoint =
        "$formatCurrentDate?latitude=${todayDateAndLocation.$2}&longitude=${todayDateAndLocation.$3}";

    var map = await fetch(endPoints: endPoint);

    return AllPrayersTimingOfDayModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://api.aladhan.com/";
}

class FormattedDate {
  final int day;
  final int month;
  final int year;

  const FormattedDate(
      {required this.day, required this.month, required this.year});
}
