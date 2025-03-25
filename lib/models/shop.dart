import 'package:flutter/material.dart';
import 'package:stylish_shop/products/products.dart';

class Shop extends ChangeNotifier {
  final List<Products> _productsMenu = [
    Products(
        title: 'Mens Printed Pullover Hoodie',
        name: 'Nike Club Fleece',
        price: '99\$',
        imagePath: 'assets/productimages/Rectangle 568.png',
        imagePath1: 'assets/productdetalimages/Rectangle 575.png',
        imagePath2: 'assets/productdetalimages/Rectangle 576.png',
        imagePath3: 'assets/productdetalimages/Rectangle 577.png',
        imagePath4: 'assets/productdetalimages/Rectangle 578.png',
        description:
            'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel'),
    Products(
        title: 'Nike Club Fleece',
        name: 'Trail Running Jacket',
        price: '99\$',
        imagePath: 'assets/productimages/Rectangle 569.png',
        imagePath1: '',
        imagePath2: '',
        imagePath3: '',
        imagePath4: '',
        description: 'bull shit'),
    Products(
        title: 'Training Top Nike',
        name: 'Training Top Nike',
        price: '100\$',
        imagePath: 'assets/productimages/pngfind 1 (1).png',
        imagePath1: '',
        imagePath2: '',
        imagePath3: '',
        imagePath4: '',
        description: 'bull shit'),
    Products(
        title: 'Trail Running Jacket',
        name: 'Trail Running Jacket',
        price: '70\$',
        imagePath: 'assets/productimages/pngegg 1 (1).png',
        imagePath1: '',
        imagePath2: '',
        imagePath3: '',
        imagePath4: '',
        description: 'bull shit'),
  ];

  final List<Products> _cart = [];

  List<Products> get productsMenu => _productsMenu;

  List<Products> get cart => _cart;

  void addToCart(
    Products productsitem,
  )
  
  
   {
    _cart.add(productsitem);
    notifyListeners();
  }
final List<Products> _favorites = [];

List<Products> get favorites => _favorites;

void addToFav(Products product) {
  _favorites.add(product);
  notifyListeners();
}

void removeFromFav(Products product) {
  _favorites.remove(product);
  notifyListeners();
}

  void removeFromCart(Products product) {
    _cart.remove(product);
    notifyListeners();
  }
}
