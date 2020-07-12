import 'dart:math';
import 'package:flutter/material.dart';

class UniqueColorGenerator {
  static Random random = new Random();

  static Color generateColor() {
    return Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}