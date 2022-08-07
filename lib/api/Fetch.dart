import 'dart:convert';
import 'package:fetch_api/model/DataModels/DataModel.dart';
import 'package:http/http.dart' as http;

class FetchApi {
  Future<DataModel> getData() async {
    var url = 'https://run.mocky.io/v3/57f4c731-29f3-4adb-bedf-b31e47852b3f';
    final response = await http.get(Uri.parse(Uri.decodeFull(url)));
    if (response.statusCode == 200) {
      var response_data = DataModel.fromJson(jsonDecode(response.body));
      print(response.body);
      return DataModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('api fetch failed');
    }
  }
}
