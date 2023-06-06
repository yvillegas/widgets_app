import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/button/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/card/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 3).getTheme(),
        home: const HomeScreen(),
        routes: {
          '/buttons': (context) => ButtonScreen(),
          '/cards': (context) => CardsScreen()
        });
  }
}
