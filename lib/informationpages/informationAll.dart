import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stylish_shop/Components/sizebox.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/productbox/image 5.png',
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(child: scroll())
          ],
        ),
      ),
    );
  }
}

Widget scroll() {
  return DraggableScrollableSheet(
    initialChildSize: 0.55,
    maxChildSize: 1,
    minChildSize: 0.55,
    builder: (context, scrollController) {
      return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Color(0xffFEFEFE),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Center(
          child: ListView(
            controller: scrollController,
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 35,
                      color: Colors.black12,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Mens Printed Pullover Hoodie',
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff8F959E),
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Text(
                    'Price',
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff8F959E),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Nike Club Fleece',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff1D1E20),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '99\$',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff1D1E20),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/productdetalimages/Rectangle 575.png'),
                    Image.asset('assets/productdetalimages/Rectangle 576.png'),
                    Image.asset('assets/productdetalimages/Rectangle 577.png'),
                    Image.asset('assets/productdetalimages/Rectangle 578.png'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff1D1E20),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Size Guide',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff8F959E),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Sizebox(
                      size: 'S',
                    ),
                    Sizebox(
                      size: 'M',
                    ),
                    Sizebox(
                      size: 'L',
                    ),
                    Sizebox(
                      size: 'XL',
                    ),
                    Sizebox(
                      size: '2XL',
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text('Description',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff1D1E20),
                        fontWeight: FontWeight.w600)),
              ),
              Text(
                  'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff8F959E),
                      fontWeight: FontWeight.w400)),
              SizedBox(height: 800),
            ],
          ),
        ),
      );
    },
  );
}
