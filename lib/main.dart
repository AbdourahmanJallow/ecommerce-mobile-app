import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jendal/screens/cart.dart';
import 'package:jendal/screens/favorites.dart';
import 'package:jendal/screens/home.dart';
import 'package:jendal/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          title: 'Jendal',
          initialRoute: '/home',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            '/home': (context) => const Home(),
            '/profile': (context) => const Profile(),
            '/cart': (context) => const Cart(),
            '/favorites': (context) => const Favorites(),
          },
        );
      },
    );
  }
}
