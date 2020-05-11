//import 'package:fem_back_app/utils/InputText.dart';
//import 'package:flutter/material.dart';
//
//class ItemDetails extends StatefulWidget {
//  @override
//  ItemDetailsState createState() {
//    return ItemDetailsState("toto");
//  }
//}
//
//class ItemDetailsState extends State<ItemDetails> {
//  ItemDetailsState(String s);
//
//  final _formKey = GlobalKey<FormState>();
//  String _title, _description;
//
//  InputText _inputName;
//  @override
//  Widget build(BuildContext context) {
//    _inputName = InputText("Nom produit");
//    return Scaffold(
//        appBar: AppBar(title: Text("Create Menu")),
//        body: Container(
//            margin: EdgeInsets.all(24),
//            child: Form(
//                key: _formKey,
//                child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.center,
//                    children: <Widget>[
//                      _inputName,
//                      Padding(
//                        padding: const EdgeInsets.symmetric(vertical: 16.0),
//                        child: RaisedButton(
//                          onPressed: () {
//                            if (_formKey.currentState.validate()) {
//                              _formKey.currentState.save();
//                              print(_inputName.value);
//                            } else {
//                              Scaffold.of(context).showSnackBar(
//                                  SnackBar(content: Text('Invalid Form !')));
//                            }
//                          },
//                          child: Text('Submit'),
//                        ),
//                      )
//                    ]))));
//  }
//}
