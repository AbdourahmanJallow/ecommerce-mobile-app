// Step 1: Create a data provider class
import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
