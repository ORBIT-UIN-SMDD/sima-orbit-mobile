import 'dart:ffi';

import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void onTap(int value) {
    selectedIndex = value;
    notifyListeners();
  }
}
