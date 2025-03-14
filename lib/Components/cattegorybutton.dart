import 'package:flutter/material.dart';

class Cattegorybutton extends StatelessWidget {
  final List<String> brands;
  final Function(String) onSelected;
  final List<Icon> icons;

  const Cattegorybutton({
    super.key,
    required this.brands,
    required this.onSelected,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    if (brands.length != icons.length) {
      return const Center(
        child: Text(
          "Error: Number of brands and icons must be equal!",
          style: TextStyle(color: Colors.red),
        ),
      );
    }

    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: ElevatedButton(
              onPressed: () {
                onSelected(brands[index]);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffF5F6FA),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Container(child: icons[index]),
                  const SizedBox(width: 5),
                  Text(
                    brands[index],
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
