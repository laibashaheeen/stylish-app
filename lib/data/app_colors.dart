import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  static Color kPrimary = const Color(0xFFF83758);
  static Color kGrey1 = const Color(0xFFA0A0A1);
  static Color kGreyHint = const Color(0xFF676767);
  static Color kGreyBorder = const Color(0xFFA8A8A9);
  static Color kGrey = const Color(0xFFA8A8A9);
  static Color kGreyContinue = const Color(0xFF575757);
  static Color kGreyFilled = const Color(0xFFF3F3F3);
  static Color kGreySvg = const Color(0xFF626262);
  static Color kWhite = Colors.white;
  static Color kBlack = Colors.black;

  static const defaultOverlay = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark);
}
