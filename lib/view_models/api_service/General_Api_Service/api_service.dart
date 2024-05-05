import "dart:convert";

import "package:http/http.dart" as http;

abstract class ApiService {
  String get baseUrl;
  String get ApiUrl;
  String get url => baseUrl + ApiUrl;

  dynamic fetch({String endPoints = ""}) async {
    var response = await http.get(Uri.parse(url + endPoints));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }
}
