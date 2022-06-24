import 'package:flutter/material.dart';

class UIColors {
  final int red;
  final int green;
  final int blue;

  factory UIColors({
    required Color baseColor,
  }) =>
      UIColors._(
        red: baseColor.red,
        green: baseColor.green,
        blue: baseColor.blue,
      );

  UIColors._({
    required this.red,
    required this.green,
    required this.blue,
  });

  Color getColor({required int adjustColor}) => Color.fromRGBO(
        red + adjustColor,
        green + adjustColor,
        blue + adjustColor,
        1,
      );
}
