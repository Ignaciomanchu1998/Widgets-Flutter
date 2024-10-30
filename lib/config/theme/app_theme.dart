import 'package:flutter/material.dart';

import 'colors_app.dart';

class AppTheme {
  final int selectedIndex;

  AppTheme({this.selectedIndex = 0})
      : assert(
          selectedIndex >= 0 && selectedIndex < colorList.length,
          'index out of range',
        );

  ThemeData getLightTheme() => ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedIndex],
      );
}
