import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String name;
  const Textfield({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 15, color: Color(0xff8F959E)),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF5F6FA),
        hintText: name,
        hintStyle: TextStyle(fontSize: 15, color: Color(0xff8F959E)),
        focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
