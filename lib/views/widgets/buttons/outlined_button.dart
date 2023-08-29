
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final bool isFilled;
  const CustomOutlinedButton({
    super.key, required this.text, this.isFilled = false
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
               onTap: () {},
               child: Container(
                 padding: EdgeInsets.all(8.h),
                 
                //  width: 90.w,
                //  height: 28.h,
                 
                 decoration: BoxDecoration(
                  color: isFilled? AppColors.kPrimary: Colors.transparent,
                   borderRadius: BorderRadius.circular(4.r),
                    border: isFilled? null : Border.all(
                     color: Colors.white,
                     width: 1,
                   ),
                 ),
                 child: Row(
                   children: [
                     Text(
                       text,
                       style: AppTypography.kSemiBold12
                           .copyWith(color: AppColors.kWhite),
                     ),
                     SizedBox(width: 4.w,),
                     SvgPicture.asset(AppAssets.kForwardArrow),
                   ],
                 ),
               ),
             );
  }
}