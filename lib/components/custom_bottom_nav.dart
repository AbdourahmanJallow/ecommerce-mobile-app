import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jendal/components/data_provider.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => CustomBottomNavState();
}

class CustomBottomNavState extends State<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
        builder: (context, navigationProvider, child) {
      return Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.grey,
            activeColor: Colors.deepOrange,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(10.h),
            gap: 8.w,
            iconSize: 20.h,
            selectedIndex: navigationProvider.selectedIndex,
            rippleColor: Colors.deepOrange,
            onTabChange: (index) {
              setState(() {
                navigationProvider.setSelectedIndex(index);
              });
            },
            tabs: [
              GButton(
                text: 'Home',
                icon: LineIcons.home,
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              GButton(
                  text: 'Favorites',
                  icon: LineIcons.heart,
                  onPressed: () {
                    Navigator.pushNamed(context, '/favorites');
                  }),
              GButton(
                  text: 'Cart',
                  icon: LineIcons.dashcube,
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  }),
              GButton(
                  text: 'Account',
                  icon: LineIcons.user,
                  onPressed: () {
                    // Navigator.pushNamed(context, '/profile');
                  })
            ],
          ),
        ),
      );
    });
  }
}
