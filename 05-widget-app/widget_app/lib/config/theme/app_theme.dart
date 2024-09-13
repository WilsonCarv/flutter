import 'package:flutter/material.dart';

const List<Color> colors = [
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,
  Colors.lightBlue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.lightGreen,
  Colors.lime,
  Colors.yellow,
  Colors.amber,
  Colors.orange,
  Colors.deepOrange,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey
];

class AppTheme {
  final int selectedColor;
   final bool isDarkmode;

  AppTheme({this.isDarkmode = false, this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colors.length,
            'Colors must be between 0 and ${colors.length - 1}');


  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colors[selectedColor],
         brightness: isDarkmode ? Brightness.dark : Brightness.light,
        appBarTheme: const AppBarTheme(
          centerTitle: true
        )
      );
  
   AppTheme copyWith({
    int? selectedColor,
    bool? isDarkmode
  }) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkmode: isDarkmode ?? this.isDarkmode,
  );
}
