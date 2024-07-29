// Color(0xFFEDE7F6),
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xFFE4E7EC),
            ),
            child: Flexible(
              child: Image.asset(
                index % 2 == 0 ? 'images/shirt.png' : 'images/sneakers.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Sneaker Pro 2024 VLC-DLC',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            '\$59.9',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ],
        // ),
      )),
    );
  }
}
