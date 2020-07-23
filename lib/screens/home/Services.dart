import 'dart:convert';
import 'package:http/http.dart'
    as http; // add the http plugin in pubspec.yaml file.
import 'package:record_app/screens/home/patients.dart';

class Services {
  static const ROOT =
      'https://reportandhospitalmanagement.000webhostapp.com/getData.php';
  static const ROWS =
      'https://reportandhospitalmanagement.000webhostapp.com/getData.php';

  static const _GET_ALL_ACTION = 'GET_ALL';

  static Future<List<tblmedicalhistory>> gettblmedicalhistory() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _GET_ALL_ACTION;
      final response = await http.post(ROOT, body: map);
      print('gettblmedicalhistory Response: ${response.body}');
      if (200 == response.statusCode) {
        List<tblmedicalhistory> list = parseResponse(response.body);
        return list;
      } else {
        return List<tblmedicalhistory>();
      }
    } catch (e) {
      return List<
          tblmedicalhistory>(); // return an empty list on exception/error
    }
  }

  static List<tblmedicalhistory> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<tblmedicalhistory>((json) => tblmedicalhistory.fromJson(json))
        .toList();
  }
}
