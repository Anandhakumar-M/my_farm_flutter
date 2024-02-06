// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppConstants {
  //primary Colors
  static const Color primaryColor_whitesmoke = Color.fromRGBO(245, 245, 245, 1);
  static const Color primaryColor_white = Color.fromRGBO(255, 255, 255, 1);
  static const Color primaryColor_darkgreen = Color.fromRGBO(37, 169, 109, 1);

  //secondary Colors
  static const Color secondaryColor_brightgreen = Color.fromRGBO(0, 128, 0, 1);
  static const Color secondaryColor_darkblue = Color.fromRGBO(69, 98, 228, 1);
  static const Color secondaryColor_orangebrown =
      Color.fromRGBO(228, 145, 69, 1);
  static const Color secondaryColor_blue = Color.fromRGBO(37, 129, 169, 1);
  static const Color secondaryColor_red = Color.fromRGBO(255, 0, 0, 1);
  static const Color secondaryColor_mutedblue =
      Color.fromRGBO(228, 236, 253, 1);

  // text color
  static const Color textColor = Color.fromRGBO(0, 0, 0, 1);
  static const Color textColor_darkgray = Color.fromRGBO(23, 23, 23, 0.5);
  static const Color bordeColor_darkgray = Color.fromRGBO(23, 23, 23, 0.60);
  static const Color Icon_darkgray = Color.fromRGBO(23, 23, 23, 1);

  // Text styles
  static const TextStyle headingTextStyle_L = TextStyle(
      fontSize: 26.0,
      fontWeight: FontWeight.w600,
      color: textColor,
      fontFamily: 'OpenSans');

  static const TextStyle headingTextStyle_M = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: textColor,
      fontFamily: 'OpenSans');

  static const TextStyle headingTextStyle_S = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: textColor,
      fontFamily: 'OpenSans');

//RichText Styles

  static const TextStyle RichTextStyle_S = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: primaryColor_darkgreen,
      fontFamily: 'OpenSans');

// Field Styles
  static const TextStyle textFieldTextStyle_L = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: textColor_darkgray,
      fontFamily: 'OpenSans');

  static const TextStyle textFieldTextStyle_S = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: textColor,
      fontFamily: 'OpenSans');
}
