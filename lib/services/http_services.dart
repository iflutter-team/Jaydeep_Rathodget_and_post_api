import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpServices {
  static Future<http.Response?> getApi({required String url}) async {
    try {
      return await http.get(Uri.parse(url));
    } catch (e) {
      return null;
    }
  }
}
