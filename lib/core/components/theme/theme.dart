import 'package:flutter/material.dart';
import 'package:jendal/core/components/theme/colors.dart';

class MyAppThemes {
  static final lightTheme = ThemeData(
    primaryColor: MyColors.lightBlue,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    primaryColor: MyColors.darkBlue,
    brightness: Brightness.dark,
  );
}
