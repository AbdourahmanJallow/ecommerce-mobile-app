import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final MaterialColor color;
  final VoidCallback onTap;

  const CustomButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
