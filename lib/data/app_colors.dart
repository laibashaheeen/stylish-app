import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
   static Color kPrimary = const Color(0xFFF83758);
   static Color kGrey =   const Color(0xFFA8A8A9);
   static Color kWhite =   Colors.white;
   static Color kBlack =   Colors.black;


  static const defaultOverlay = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark);
}
