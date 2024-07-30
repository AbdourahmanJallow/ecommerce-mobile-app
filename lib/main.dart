import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jendal/core/components/data_provider.dart';
import 'package:jendal/core/screens/cart.dart';
import 'package:jendal/core/screens/favorites.dart';
import 'package:jendal/core/screens/home.dart';
import 'package:jendal/core/screens/profile.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NavigationProvider())],
      child: const MyApp()));
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
          // theme: MyAppThemes.lightTheme,
          // darkTheme: MyAppThemes.darkTheme,
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
