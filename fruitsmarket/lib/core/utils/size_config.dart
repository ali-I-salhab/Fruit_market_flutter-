import 'dart:developer';
import 'package:flutter/material.dart';

class SizeConfig {
  static double? ScreenWidth;
  static double? ScreenHeigth;

  static double? DefaultSize;

  static Orientation? orientation;
  void init(BuildContext context) {
    ScreenWidth = MediaQuery.of(context).size.width;
    ScreenHeigth = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    DefaultSize = orientation == Orientation.landscape
        ? ScreenHeigth! * 0.024
        : ScreenWidth! * 0.024;

    print('this is thw default size $DefaultSize');
  }
}
