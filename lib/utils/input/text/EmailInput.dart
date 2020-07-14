import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatefulWidget {
  final FormFieldSetter<String> onSaved;

  EmailInput(this.onSaved);

  @override
  EmailInputState createState() => EmailInputState();
}

class EmailInputState extends State<EmailInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: "Email", prefixIcon: Icon(Icons.email)),
      keyboardType: TextInputType.emailAddress,
      autovalidate: true,
      validator: (value) =>
          EmailValidator.validate(value) ? null : "email invalide",
      onSaved: widget.onSaved,
    );
  }
}
