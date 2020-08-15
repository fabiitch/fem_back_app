import 'dart:convert';

import 'package:fem_back_app/vo/EtabInfo.dart';
import 'package:http/http.dart' as http;

class EtabProvider {
  static Future<EtabInfo> saveEtab(EtabInfo etabInfo) async {
    final response = await http.post(
        'http://10.0.2.2:8080/fem/api/etab/v1/save',
        body: jsonEncode(etabInfo));
    if (response.statusCode == 200) {
      return EtabInfo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to save etab :' + response.toString());
    }
  }
}
