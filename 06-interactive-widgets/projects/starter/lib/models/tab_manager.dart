// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

// 1 TabManager extends ChangeNotifier. This allows
// the object -TabManager- to provide change notifications to its listeners by making use of notifyListeners.

class TabManager extends ChangeNotifier {
  // 2
  int selectedTab = 0;

  // 3
  void goToTab(index) {
    // 4
    // Stores the index of the new tab the user tapped.
    selectedTab = index;
    // 5
    // Calls notifyListeners() to notify all widgets listening to this state.

    notifyListeners();
  }

  // 6
  // is a specific function that sets selectedTab to the Recipes tab, which is at index 1.

  void goToRecipes() {
    selectedTab = 1;

    // 7
    // Notifies all widgets listening to TabManager that Recipes is the selected tab.

    notifyListeners();
  }
}
