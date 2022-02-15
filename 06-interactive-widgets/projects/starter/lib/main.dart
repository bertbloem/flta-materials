// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      // Replace const Home() with MultiProvider
      // 1
      home: MultiProvider(
        providers: [
          // 2
          // ChangeNotifierProvider creates an instance of TabManager, which listens to tab index changes and notifies its listeners.
          ChangeNotifierProvider(create: (context) => TabManager()),
          // TODO 10: Add GroceryManager Provider
        ],
        child: const Home(),
      ),
    );
  }
}
