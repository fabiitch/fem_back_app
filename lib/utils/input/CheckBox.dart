import 'package:flutter/material.dart';

class CheckBoxInput extends StatefulWidget {
  final String nameField;
  final ValueChanged<bool> valueChanged;
  final bool initValue;
  final IconData icon;

  CheckBoxInput(this.nameField, this.valueChanged, [this.initValue, this.icon]);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxInput> {
  bool valueC = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(widget.nameField),
        value: valueC,
        secondary: Icon(widget.icon),
        onChanged: (bool value) {
          setState(() {
            valueC = value;
          });
        });
  }
}
