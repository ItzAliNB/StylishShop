import 'package:flutter/material.dart';

class Productsbox extends StatelessWidget {
  const Productsbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 203,
      decoration: BoxDecoration(
          color: const Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
