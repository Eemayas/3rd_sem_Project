import 'package:flutter/material.dart';

Decoration boxDecoration_backgroundimage = BoxDecoration(
  image:
      DecorationImage(image: AssetImage("assets/unsplash_li0iC0rjvvg (1).png")),
);
TextStyle textStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    fontSize: 28,
    foreground: Paint()
      ..shader = LinearGradient(
        colors: <Color>[
          Color(0xffEA5753),
          Color(0xffCC540D),
        ],
      ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)));
