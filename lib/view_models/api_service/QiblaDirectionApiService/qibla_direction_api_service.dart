import 'package:flutter_quran_api_practice/model/Qibla_Direction/qibla_direction_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/General_Api_Service/api_service.dart';
import 'dart:developer' as developer;

class QiblaDirectionApiService extends ApiService {
  // https://api.aladhan.com/v1/qibla/29.39675395993523/71.74744384999234

  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/qibla/";

  Future<QiblaDirectionModel> fetchQiblaDirectionOfUser(
      (double longitude, double latitude) userCurrentLocationRecord) async {
    var endPoint =
        "${userCurrentLocationRecord.$1}/${userCurrentLocationRecord.$2}";

    String cur = "$baseUrl$ApiUrl$endPoint";
    developer.log("Url : $cur");

    var map = await fetch(endPoints: endPoint);
    return QiblaDirectionModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://api.aladhan.com/";
}
