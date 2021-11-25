import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

class MaterialColorsData {
  static final MaterialColor Primary = MaterialColor(0xFFF39A21, color);
  static final MaterialColor Secondary = MaterialColor(0xFFF4D581, color);
}

class ColorsData {
  static const Color Primary = Color(0xFFF39A21);
  static const Color Secondary = Color(0xFF4468b1);
  static const Color FaceBook = Color(0xFF3b5998);
  static const Color Google = Color(0xFFEA4335);
  static const Color DarkBg = Color(0xff17191c);
}
