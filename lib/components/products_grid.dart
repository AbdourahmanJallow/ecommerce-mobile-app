import 'package:flutter/material.dart';
import 'package:jendal/components/product_card.dart';
import 'package:jendal/screens/product_details.dart';

class ProductsGrid extends StatefulWidget {
  const ProductsGrid({super.key});

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20,
              mainAxisExtent: 300),
          children: List.generate(30, (index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductDetails()));
                },
                child: ProductCard(index: index));
          }),
        ),
      ),
    ));
  }
}
