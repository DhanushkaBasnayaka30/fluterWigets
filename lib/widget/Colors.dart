import 'package:flutter/material.dart';

class AppColors{
  static Color bgColor = Colors.green;

  static List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.white.withOpacity(0.5),
      offset: Offset(-5,-5),
      spreadRadius: -5,
      blurRadius: 25
    ),
    BoxShadow(
      color: Colors.green.shade900.withOpacity(0.5),
      offset: Offset(7,7),
      spreadRadius: 2,
      blurRadius: 20
    ),

  ];
}