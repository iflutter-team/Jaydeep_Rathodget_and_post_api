import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untiapi/services/http_services.dart';
import 'package:untiapi/utils/api_and_point.dart';

import '../../model/model_class.dart';

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response = await HttpServices.getApi(url:EndPointRes.photosEndPoint);
      if (response != null && response.statusCode == 200) {
        return imageModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
