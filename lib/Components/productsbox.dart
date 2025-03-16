import 'package:flutter/material.dart';

class Productsbox extends StatelessWidget {
  const Productsbox(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      required this.onpressed});
  final String title;
  final String price;
  final Image image;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed ?? () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 203,
            decoration: BoxDecoration(
                color: const Color(0xffF3F3F3),
                borderRadius: BorderRadius.circular(15)),
            child: image,
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 120,
            height: 30,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
            ),
          ),
          Text(
            price,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
