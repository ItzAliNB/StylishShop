import 'package:flutter/material.dart';

class Sizebox extends StatelessWidget {
  const Sizebox({super.key, required this.size});

  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Color(0xffF5F6FA), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff1D1E20),
          ),
        ),
      ),
    );
  }
}
