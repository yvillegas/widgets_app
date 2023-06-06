import 'package:flutter/material.dart';

final List<Color> colorList = [
  Colors.black,
  const Color.fromARGB(255, 224, 128, 219),
  Colors.white,
  Colors.blue,
  Colors.purple,
  const Color.fromARGB(255, 217, 20, 207)
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor > 0, 'Selected color must be greater the 0'),
        assert(selectedColor < colorList.length, 'Selected color must be less');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
