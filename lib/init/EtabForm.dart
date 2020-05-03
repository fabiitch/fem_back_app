import 'package:email_validator/email_validator.dart';
import 'package:fem_back_app/data/EtabInfo.dart';
import 'package:flutter/material.dart';

class EtabForm extends StatefulWidget {
  @override
  EtabFormState createState() {
    return EtabFormState();
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

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
        appBar: AppBar(title: Text("Information Générales Etablissement")),
        body: Container(
            margin: EdgeInsets.all(24),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Name Etablissement"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (value.length > 50) {
                          return 'name too long';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        _name = value;
                      },
                      autovalidate: true,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Email"),
                      keyboardType: TextInputType.emailAddress,
                      autovalidate: true,
                      validator: (value) => EmailValidator.validate(value)
                          ? null
                          : "email invalide",
                      onSaved: (String value) {
                        _email = value;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Type etab"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (value.length > 50) {
                          return 'name too long';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        _type = value;
                      },
                      autovalidate: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false
                          // otherwise.
                          if (_formKey.currentState.validate()) {
                            // If the form is valid, display a Snackbar.
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text('Processing Data')));
                            _formKey.currentState.save();
                            print(_formKey);
                            print(_name);

                            EtabInfo(_name,_email,_type);
                          } else {
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text('Invalid Form !')));
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ),
                  ],
                ))));
  }
}
