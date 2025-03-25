import 'package:flutter/material.dart';
import 'package:stylish_shop/products/products.dart';

class Productsbox extends StatelessWidget {
  final Products products;
  final void Function()? onTap;
  const Productsbox({super.key, required this.products, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 15),
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 160,
                height: 203,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.asset(
                      products.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Text(products.name),
            Text(products.price)
          ],
        ),
      ),
    );
  }
}
