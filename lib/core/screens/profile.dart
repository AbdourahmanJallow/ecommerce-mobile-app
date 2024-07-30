import 'package:flutter/material.dart';
import 'package:jendal/core/components/custom_bottom_nav.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: const Center(
        child: Text(
          'Profile Page',
          style: TextStyle(fontSize: 25),
        ),
      )),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
