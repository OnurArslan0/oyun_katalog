import 'package:flutter/material.dart';

class ColorSelect {
  static Color blueColor = const Color.fromRGBO(16, 100, 188, 1);
  static Color greyColor = const Color.fromRGBO(163, 163, 163, 1);

  void colorSet() {
    Color x = blueColor;
    blueColor = greyColor;
    greyColor = x;
  }
}
