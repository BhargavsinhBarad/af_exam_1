import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api_model.dart';

class api_helper {
  api_helper._();

  static api_helper api = api_helper._();

  Future getdata() async {
    var ans = await http.get(
      Uri.parse(
          "http://api.mediastack.com/v1/news?access_key=94c5cf2364264dfb5cd87854273682a1&keywords=cricket&countries=us"),
    );

    if (ans.statusCode == 200) {
      var body = ans.body;
      Map decodegata = jsonDecode(body);
      api_model data = api_model.js(data: decodegata);
      return data;
    } else {
      return null;
    }
  }
}
