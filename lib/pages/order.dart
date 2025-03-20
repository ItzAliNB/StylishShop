import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_shop/imagesClasses/products.dart';
import 'package:stylish_shop/models/shop.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  void removeFromCart(Products product, BuildContext context) {
    final shop = context.read<Shop>();

    shop.removeFromCart(product);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Products products = value.cart[index];

                  final String productName = products.name;

                  final String productPrice = products.price;

                  return Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      title: Text(productName),
                      subtitle: Text(productPrice),
                      trailing: IconButton(
                          onPressed: () => removeFromCart(products, context),
                          icon: Icon(Icons.delete)),
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xff9775FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Pay Now',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
