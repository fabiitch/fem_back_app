import 'package:flutter/material.dart';
//TODO a voir
String test(value) {
  if (value.isEmpty) {
    return 'Please enter some text';
  }
  if (value.length > 5) {
    return 'name too long';
  }
  return null;
}
