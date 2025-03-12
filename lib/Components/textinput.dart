import 'package:flutter/material.dart';

class Textinput extends StatelessWidget {
  const Textinput({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: name,
        ),
      ),
    );
  }
}