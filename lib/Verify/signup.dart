import 'package:flutter/material.dart';
import 'package:stylish_shop/Components/textinput.dart';
import 'package:stylish_shop/Verify/gender.dart';
import 'package:stylish_shop/Verify/signin.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  color: Color(0xff1D1E20),
                ),
              ),
            ),

            // Input Fields
            Container(
              margin: const EdgeInsets.only(top: 60),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: const [
                  Textinput(name: 'Username'),
                  SizedBox(height: 20),
                  Textinput(name: 'Password'),
                  SizedBox(height: 20),
                  Textinput(name: 'Verify Password'),
                ],
              ),
            ),

            // Sign In Link
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signin()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: const Text(
                  'Already have an account? Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff8F959E),
                  ),
                ),
              ),
            ),

            const Spacer(),

            // Sign Up Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Gender()),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xff9775FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
