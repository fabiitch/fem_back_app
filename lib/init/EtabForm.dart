import 'dart:convert';

import 'file:///C:/Users/fabie/Documents/info/FEM/fem_back_app/lib/utils/input/text/EmailInput.dart';
import 'package:fem_back_app/provider/EtabProvider.dart';
import 'package:fem_back_app/utils/input/text/InputText.dart';
import 'package:fem_back_app/utils/validators/TextValidator.dart';
import 'file:///C:/Users/fabie/Documents/info/FEM/fem_back_app/lib/utils/input/text/SimpleInputText.dart';
import 'package:fem_back_app/vo/EtabInfo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EtabForm extends StatefulWidget {
  @override
  EtabFormState createState() {
    return EtabFormState();
  }
}

Future<EtabInfo> fetchAlbum() async {
  final response = await http.get('http://10.0.2.2:8080/fem/api/etab/v1/test');

  if (response.statusCode == 200) {
    print('ok');
    print(response.body);
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return EtabInfo.fromJson(json.decode(response.body));
  } else {
    print('error $response.statusCode');
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class EtabFormState extends State<EtabForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  String _name, _email, _type;
  Future<EtabInfo> futureEtab;

  @override
  Widget build(BuildContext context) {
    Function(String) tt = TextValidator.min(2);
    // Build a Form widget using the _formKey created above.
    return Scaffold(
        appBar: AppBar(title: Text("Information Générales Etablissement")),
        body: Container(
            margin: EdgeInsets.all(24),
            child: Form(
                key: _formKey,
                child: new SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SimpleInputText("Information Générales Etablissement",
                        (String value) {
                      _name = value;
                    }, 1, 20, Icons.home),
                    SimpleInputText("etab type", (String value) {
                      _type = value;
                    }, 1, 20),
                    InputText("NameEtab", (String value) {
                      _name = value;
                    }, [TextValidator.min(2), TextValidator.max(50)]),
                    EmailInput((String value) {
                      _email = value;
                    }),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            print(_formKey);
                            print(_name);

                            EtabInfo etabNew =
                                EtabInfo(null, _name, _email, _type);
                            print('============');
                            print(etabNew);

                            futureEtab = EtabProvider.saveEtab(etabNew);
                            futureEtab.then((value) {
                              print(value);
                            });

                            //                            futureEtab = fetchAlbum();
                            futureEtab.then((value) {
                              print('then ');
                              print(value);
                            });
                          } else {
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text('Invalid Form !')));
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ),
                  ],
                )))));
  }
}
