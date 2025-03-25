import 'package:flutter/material.dart';
import 'package:stylish_shop/Components/textfield.dart';
import 'package:stylish_shop/Components/textinput.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      appBar: AppBar(
        backgroundColor: Color(0xffFEFEFE),
        centerTitle: true,
        title: const Text('Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Name',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Textfield(
                name: 'Write your name',
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  'Country / City',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Textfield(
                          name: 'Country',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Textfield(
                          name: 'City',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Textfield(name: 'Phone Number')),
              Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    'Address',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Textfield(
                  name: 'Address',
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff9775FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Save Address',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
