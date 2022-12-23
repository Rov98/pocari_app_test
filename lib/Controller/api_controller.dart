import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:pocari_app_test/Model/Web_domain.dart';

class api_controller {
  Future<List<dynamic>> getWeb_Domain() async {
    var url = Uri.parse(
        'http://universities.hipolabs.com/search?country=United+Kingdom');
    var result = await http.get(url);

    if (result.statusCode == 200) {
      return json.decode(result.body);
    } else {
      throw Exception('Fetch data failed');
    }
  }
}
