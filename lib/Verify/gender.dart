import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stylish_shop/Components/button1.dart';

// Gender selection screen
class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: Scaffold(
        backgroundColor: const Color(0xff9775FA), // Purple background
        body: Column(
          children: [
            const Spacer(), // Adds space at the top

            // Lottie animation
            Container(
              alignment: Alignment.topCenter,
              child: Lottie.asset('assets/animations/Animation - 1741816529994.json'),
            ),

            // White rounded container for content
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 244,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: [
                    // Title text
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Look Good, Feel Good',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ),

                    // Description text
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: const Text(
                        'Create your individual & unique style and look amazing everyday.',
                        style: TextStyle(
                          color: Color(0xff8F959E),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                        textWidthBasis: TextWidthBasis.parent,
                      ),
                    ),

                    // Gender selection buttons (You can add navigation in onTap)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button1(
                          color: const Color(0xffF5F6FA),
                          text: 'Women',
                          colortext: const Color(0xff8F959E),
                          // onTap: () => Navigator.push(...), // Optional navigation
                        ),
                        Button1(
                          color: const Color(0xff9775FA),
                          text: 'Men',
                          colortext: const Color(0xffFFFFFF),
                          // onTap: () => Navigator.push(...), // Optional navigation
                        ),
                      ],
                    ),

                    // Skip text (Optional: Add GestureDetector if you want to navigate)
                    Container(
                      margin: const EdgeInsets.only(top: 18),
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xff8F959E),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30), // Space at the bottom
          ],
        ),
      ),
    );
  }
}
