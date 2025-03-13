import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stylish_shop/Components/button1.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff9775FA),
        body: Column(
          children: [
            Spacer(),
            Container(
                alignment: Alignment.topCenter,
                child: Lottie.asset(
                    'assets/animations/Animation - 1741816529994.json')),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 244,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Look Good, Feel Good',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Create your individual & unique style and look amazing everyday.',
                        style: TextStyle(
                            color: Color(0xff8F959E),
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                        textWidthBasis: TextWidthBasis.parent,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button1(
                          color: Color(0xffF5F6FA),
                          text: 'Women',
                          colortext: Color(0xff8F959E),
                        ),
                        Button1(
                          color: Color(0xff9775FA),
                          text: 'Men',
                          colortext: Color(0xffFFFFFF),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 18),
                      child: Text(
                        'Skip',
                        style:
                            TextStyle(color: Color(0xff8F959E), fontSize: 17),
                      ),
                    ),
                  ],
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
