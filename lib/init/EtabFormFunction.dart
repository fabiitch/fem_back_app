import 'dart:convert';

import 'package:fem_back_app/vo/EtabInfo.dart';
import 'package:http/http.dart' as http;

Future<EtabInfo> saveEtab(EtabInfo etabInfo) async {
//  final response = await http.get('http://10.0.2.2:8080/fem/api/etab/v1/test');
//  final response = await http.post('http://10.0.2.2:8080/fem/api/etab/v1/save', body:etabInfo.toJson().toString());

  var toto = "toto;";
  final response = await http.post('http://10.0.2.2:8080/fem/api/etab/v1/save',
      body: jsonEncode({'name': toto}));
  if (response.statusCode == 200) {
    print('ok');
    print(response.body);
    return EtabInfo.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to save etab :' + response.toString());
  }
}