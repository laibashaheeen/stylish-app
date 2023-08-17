import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  // Extra Light. (400)

  // Light .  (500)
  static TextStyle kLight20 =
      GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500);
  // Medium . (600)

  // Bold . (700)

  // Extra . (800 )
  static TextStyle kExtraBold24 =
      GoogleFonts.montserrat(fontSize: 26.sp, fontWeight: FontWeight.w800);
  static TextStyle kSemiBold14 =
      GoogleFonts.montserrat(fontSize: 14.sp, fontWeight: FontWeight.w600);
  static TextStyle kSemiBold18 =
      GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.w600);
}
