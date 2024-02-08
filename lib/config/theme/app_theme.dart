import 'package:flutter/material.dart';

// const Color _customColor = Color(0xFFDC0B0B);

const List<Color> colorThemes = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.lime,
  Colors.yellow,
  Colors.cyan,
  Colors.amber,
  Colors.teal,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({this.isDarkmode = false, this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= colorThemes.length - 1,
            'Colors must be between 0 and ${colorThemes.length - 1}');

  ThemeData getTheme() {
    return ThemeData(
        useMaterial3: true,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorThemes[selectedColor],
        // brightness: Brightness.dark
        appBarTheme: const AppBarTheme(centerTitle: false));
  }

  AppTheme copyWith({int? selectedColor, bool? isDarkmode}) => AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkmode: isDarkmode ?? this.isDarkmode);
}
