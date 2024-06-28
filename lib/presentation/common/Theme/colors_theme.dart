import 'package:flutter/material.dart';

class ColorApp {
  static final ColorApp _colorApp = ColorApp._internal();
  
  factory ColorApp() {
    return _colorApp;
  }
  
  ColorApp._internal();

  static const Color colorPrincipalApp = Colors.black;
  static const Color backgroundApp = Colors.white;
  static const Color colorTextOnBackground = Colors.white;
  static const Color colorBackgroundButton = Colors.grey;
  static const Color colorTextBody = Colors.black;
  static const Color colorIconApp = Colors.orange;

}