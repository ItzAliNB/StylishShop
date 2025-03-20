import 'package:flutter/material.dart';
import 'package:stylish_shop/imagesClasses/products.dart';

class Productsbox extends StatelessWidget {
  final Products products;
  final void Function()? onTap;
  const Productsbox({super.key, required this.products, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Image.asset(
              products.imagePath,
              height: 140,
            ),
            Text(
              products.name,
              style: TextStyle(fontSize: 12),
            ),
            Text(products.price)
          ],
        ),
      ),
    );
  }
}
