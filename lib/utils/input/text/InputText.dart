import 'dart:io';

import 'package:fem_back_app/utils/validators/TextValidator.dart';
import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String nameField;
  final IconData icon;
  final FormFieldSetter<String> onSaved;
  final List<Function(String)> validators;

  InputText(this.nameField, this.onSaved,
      [this.validators = const [], this.icon]);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: widget.nameField,
          prefixIcon: widget.icon != null ? Icon(widget.icon) : null
      ),
      validator: (val) {
          for (int i = 0; i < widget.validators.length; i++) {
            if (widget.validators[i](val) != null) {
              return widget.validators[i](val);
            }
          }
        return null;
      },
      textInputAction: TextInputAction.done,
      onSaved: widget.onSaved,
      autovalidate: true,
    );
  }
}
