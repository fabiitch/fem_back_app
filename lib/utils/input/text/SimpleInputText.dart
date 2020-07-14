import 'package:fem_back_app/utils/input/text/InputText.dart';
import 'package:fem_back_app/utils/validators/TextValidator.dart';
import 'package:flutter/material.dart';


class SimpleInputText extends StatefulWidget {
  final String nameField;
  final int maxLenght;
  final int minLenght;
  final IconData icon;
  final FormFieldSetter<String> onSaved;

  SimpleInputText(this.nameField,this.onSaved, this.minLenght, this.maxLenght,
      [this.icon]);

  @override
  _SimpleInputTextState createState() => _SimpleInputTextState();
}

class _SimpleInputTextState extends State<SimpleInputText> {
  @override
  Widget build(BuildContext context) {
    return InputText(
        widget.nameField,
        widget.onSaved,
        [
          TextValidator.notEmpty(),
          TextValidator.min(widget.minLenght),
          TextValidator.max(widget.maxLenght)
        ], widget.icon);
  }
}
