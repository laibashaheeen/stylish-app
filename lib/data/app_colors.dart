import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  static Color kPrimary = const Color(0xFFF83758);
  static Color kGrey1 = const Color(0xFFA0A0A1);
  static Color kGreyHint = const Color(0xFF676767);
  static Color kGrey = const Color(0xFFA8A8A9);
  static Color kGreyContinue = const Color(0xFF575757);
  static Color kGreyFilled = const Color(0xFFF3F3F3);
  static Color kGreyWelcome = const Color(0xFFF2F2F2);
  static Color kGreySvg = const Color(0xFF626262);
  static Color kGreySearch = const Color(0xFFBBBBBB);
  static Color kGreyIndicator = const Color(0xFFDEDBDB);
  static Color kGreyWrap = const Color(0xFF828282);
  static Color kGreyDivider = const Color(0xFFC4C4C4);
  static Color kWhite = Colors.white;
  static Color kWhiteBody = const Color.fromARGB(255, 249, 248, 248);
  static Color kBlack = Colors.black;
  static Color kBlackShadow = const Color(0x40000000);
  static Color kBlue = const Color(0xFF4392F9);
  static Color kBlueEnd = const Color(0xFF0B3689);
  static Color kBlueStart = const Color(0xFF3F92FF);
  static Color kPrimaryHue = const Color(0xFFFD6E87);
  static Color kPinkDelivery = const Color(0xFFFFCCD5);
  static Color kPink = const Color(0xFFFFA3B3);
  static Color kGreenStart = const Color(0xFF71F9A9);
  static Color kGreenEnd = const Color(0xFF31B769);

  static const defaultOverlay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    // systemNavigationBarColor: Colors.transparent,
    // systemNavigationBarDividerColor: Colors.transparent,
    // systemNavigationBarIconBrightness: Brightness.dark
  );
}
