import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_shop/models/shop.dart';
import 'package:stylish_shop/products/products.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<Shop>(
        builder: (context, shop, child) => ListView.builder(
          itemCount: shop.favorites.length,
          itemBuilder: (context, index) {
            Products product = shop.favorites[index];
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                tileColor: Colors.transparent,
                leading: Image.asset(product.imagePath, width: 50),
                title: Text(product.name),
                subtitle: Text(product.price),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => shop.removeFromFav(product),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
