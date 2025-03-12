import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff9775FA),
        body: Column(
          children: [
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 244,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: [Text('Look Good, Feel Good')],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
