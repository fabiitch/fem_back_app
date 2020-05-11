import 'package:fem_back_app/utils/validators/TextValidator.dart';
import 'package:flutter/material.dart';

class SimpleInputText extends StatefulWidget {
  final String nameField;
  final int maxLenght;
  final int minLenght;
  final IconData icon;
  final FormFieldSetter<String> onSaved;

  SimpleInputText(this.nameField, this.minLenght, this.maxLenght, this.onSaved,
      [this.icon]);

  @override
  SimpleInputTextState createState() => SimpleInputTextState();
}

class SimpleInputTextState extends State<SimpleInputText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: widget.nameField,
          prefixIcon: widget.icon != null ? Icon(widget.icon) : null),
      validator:
          TextValidator.emptyMinMaxLenght(widget.minLenght, widget.maxLenght),
      textInputAction: TextInputAction.done,
      onSaved: widget.onSaved,
      autovalidate: true,
    );
  }
}
