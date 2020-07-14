import 'package:flutter/material.dart';

class TestCheck {
  static Widget checkBox(String title, bool boolValue) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            print('chageeed' + value.toString());
            boolValue = value;
          },
        )
      ],
    );
  }
}
