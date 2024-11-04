import 'package:flutter/material.dart';

// PARA LEER HEXADECIMAL SE UTILIZA [0xFF]
const Color _customColor = Color(0xFF5C11D4);

// VARIABLES CON GUION BAJO SOLO SE PUEDEN UTILIZAR EN EL MISMO ARCHIVO...
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Color must between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed:
          _colorThemes[selectedColor], /*brightness: Brightness.dark*/
    );
  }
}
