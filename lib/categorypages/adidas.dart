import 'package:flutter/material.dart';
import 'package:stylish_shop/Components/productsbox.dart';

class Adidas extends StatelessWidget {
  const Adidas({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Productsbox()
          ],
        ),
      ],
    );
  }
}
