import 'package:flutter_quran_api_practice/model/Islamic_Conversions/date_conversion_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/General_Api_Service/api_service.dart';

class IslamicDateConversionApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/gToH/";

  // https://api.aladhan.com/v1/gToH/17-3-2024

  Future<IslamicDateConversionModel> fetchConvertedDate(
      (int day, int month, int year) todayDate) async {
    String endPoint = "${todayDate.$1}-${todayDate.$2}-${todayDate.$3}";
    var map = await fetch(endPoints: endPoint);
    return IslamicDateConversionModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "http://api.aladhan.com/";
}
