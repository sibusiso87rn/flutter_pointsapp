
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

class Screen {

  static double get _ppi => (Platform.isAndroid || Platform.isIOS)? 150 : 96;
  static bool isLandscape(BuildContext c) => MediaQuery.of(c).orientation == Orientation.landscape;

  //PIXELS
  static Size size(BuildContext c) => MediaQuery.of(c).size;
  static double statusBarSize(BuildContext c) => MediaQuery.of(c).padding.top;
  static double width(BuildContext c) => size(c).width;
  static double height(BuildContext c) => size(c).height;
  static double diagonal(BuildContext c) {
    Size s = size(c);
    return sqrt((s.width * s.width) + (s.height * s.height));
  }
  static double height_with_app_bar(BuildContext context,AppBar appBar) {
    return height(context)-appBar.preferredSize.height-statusBarSize(context);
  }

  static double height_without_app_bar(BuildContext context) {
    return height(context)-statusBarSize(context);
  }

  //INCHES
  static Size inches(BuildContext c) {
    Size pxSize = size(c);
    return Size(pxSize.width / _ppi, pxSize.height/ _ppi);
  }
  static double widthInches(BuildContext c) => inches(c).width;
  static double heightInches(BuildContext c) => inches(c).height;
  static double diagonalInches(BuildContext c) => diagonal(c) / _ppi;
}