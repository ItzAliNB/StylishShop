import 'package:flutter/material.dart';
import 'package:stylish_shop/Components/textinput.dart';
import 'package:stylish_shop/Verify/gender.dart';
import 'package:stylish_shop/home.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Welcome',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        'Please enter you username and password to countinue',
                        style:
                            TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Color(0xff8F959E)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      child: Column(
                        children: [
                          Textinput(
                            name: 'Username',
                          ),
                          Textinput(
                            name: 'Password',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gender()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xff9775FA),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
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
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
