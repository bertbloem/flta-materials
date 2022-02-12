import 'package:flutter/material.dart';

// 1 TabManager extends ChangeNotifier. This allows 
// the object to provide change notifications to its listeners.

class TabManager extends ChangeNotifier {
  // 2
  int selectedTab = 0;

  // 3
  void goToTab(index) {
    // 4
    selectedTab = index;
    // 5
    notifyListeners();
  }

  // 6
  void goToRecipes() {
    selectedTab = 1;
    // 7
    notifyListeners();
  }
}
