import 'package:fem_back_app/utils/input/CheckBox.dart';
import 'file:///C:/Users/fabie/Documents/info/FEM/fem_back_app/lib/utils/input/text/SimpleInputText.dart';
import 'package:fem_back_app/utils/input/TestCheck.dart';
import 'package:fem_back_app/utils/validators/TextValidator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ItemDetails extends StatefulWidget {
  @override
  ItemDetailsState createState() {
    return ItemDetailsState();
  }
}

class ItemDetailsState extends State<ItemDetails> {
  ItemDetailsState();

  final _formKey = GlobalKey<FormState>();
  String _title, _description;
  bool _canBuy = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Create Menu")),
        body: Container(
            margin: EdgeInsets.all(24),
            child: FormBuilder(
                key: _formKey,
                autovalidate: true,
                child: new SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FormBuilderTextField(
                      attribute: "Titre",
                      decoration: InputDecoration(labelText: "title"),
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.max(25),
                        FormBuilderValidators.min(25),
                      ],
                    ),
                    FormBuilderTextField(
                      
                      attribute: "Description",
                      decoration: InputDecoration(labelText: "title"),
                      validators: [
                        FormBuilderValidators.numeric(),
                        FormBuilderValidators.max(70),
                      ],
                    ),
//                    SimpleInputText("Description", 1, 20, (String value) {
//                      _description = value;
//                    }, Icons.home),
                    CheckboxListTile(
                        title: Text("toto"),
                        value: _canBuy,
                        secondary: Icon(Icons.hourglass_full),
                        onChanged: (bool value) {
                          setState(() {
                            _canBuy = value;
                          });
                        }),
                    CheckBoxInput("taaaato", (bool value) {
                      print('aaaaaaa' + value.toString());
                      setState(() {
                        _canBuy = value;
                      });
                    }, _canBuy),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        onPressed: () {
                          print('pressed  ' +
                              _formKey.currentState.toStringShort());
                          if (_formKey.currentState.validate()) {
                            print(_description);
                            print(_canBuy);
                            _formKey.currentState.save();
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
