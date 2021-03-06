import 'package:fem_back_app/init/EtabForm.dart';
import 'package:fem_back_app/item/ItemDetails.dart';
import 'package:fem_back_app/menu/MenuDetails.dart';
import 'package:flutter/material.dart';

void main() => runApp(FastEatManagerAPP());

class FastEatManagerAPP extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast Eat Manager Application',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: EtabForm(),
    );
  }
}