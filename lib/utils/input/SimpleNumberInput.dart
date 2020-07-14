import 'package:fem_back_app/utils/input/text/InputText.dart';
import 'package:fem_back_app/utils/validators/TextValidator.dart';
import 'package:fem_back_app/utils/validators/number/NumberValidator.dart';
import 'package:flutter/material.dart';

class InputNumber extends StatefulWidget {
  final String nameField;
  final int min;
  final int max;
  final IconData icon;
  final FormFieldSetter<String> onSaved;

  InputNumber(this.nameField, this.onSaved, this.min, this.max, [this.icon]);

  @override
  _InputNumberState createState() => _InputNumberState();
}

class _InputNumberState extends State<InputNumber> {
  @override
  Widget build(BuildContext context) {
    return InputText(
        widget.nameField,
        widget.onSaved,
        [
          TextValidator.notEmpty(),
          NumberValidator.min(widget.min),
          NumberValidator.max(widget.max)
        ],
        Icons.home);
  }
}
