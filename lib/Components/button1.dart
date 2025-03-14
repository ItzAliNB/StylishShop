import 'package:flutter/material.dart';
import 'package:stylish_shop/home.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key,
      required this.color,
      required this.text,
      required this.colortext});

  final Color color;
  final Color colortext;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 15),
        width: 152,
        height: 60,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 17, color: colortext),
        )),
      ),
    );
  }
}
