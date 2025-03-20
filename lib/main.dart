import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_shop/home.dart';
import 'package:stylish_shop/models/shop.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Shop(),
  child: const MainApp(),));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
