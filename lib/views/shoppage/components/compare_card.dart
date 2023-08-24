import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class CompareCARD extends StatelessWidget {
  final String image;
  final String text;
  const CompareCARD( { super.key, required this.image, required this.text, });

  @override
  Widget build(BuildContext context, ) {
    return InkWell(
      onTap: () {},
      child: Container(

        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
        decoration: BoxDecoration(
           color: AppColors.kWhite,
         
          borderRadius: BorderRadius.circular(1.r),
        ),
        child: Row(
          children: [
            SvgPicture.asset(image),
          
             SizedBox(width: 4.w,),
            Text(
              text,
              style: AppTypography.kLight14.copyWith(color: AppColors.kBlack)
            ),
          ],
        ),
      ),
    );
  }
}