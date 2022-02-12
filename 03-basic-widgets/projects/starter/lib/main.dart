import 'package:flutter/material.dart';
import 'home.dart';

// 1
import 'fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

// 2
class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
