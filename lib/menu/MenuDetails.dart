import 'package:flutter/material.dart';

class MenuDetails extends StatefulWidget {
  @override
  MenuDetailsState createState() {
    return MenuDetailsState("toto");
  }
}

class MenuDetailsState extends State<MenuDetails> {
  MenuDetailsState(String s);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Create Menu")),
    body: Container()
    );
  }

}