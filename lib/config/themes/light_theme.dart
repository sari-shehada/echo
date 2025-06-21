import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFF39177),
    primaryFixedDim: Color(0xFFF7B3A1),
    surface: Color(0xFFFDF4F2),
    //TODO: Change the ones below to match design
    onPrimary: Colors.white,
    secondary: Colors.blueAccent,
    onSecondary: Colors.white,
    error: Color(0xFFF44336),
    onError: Colors.white,
    onSurface: Colors.black,
  ),
);
