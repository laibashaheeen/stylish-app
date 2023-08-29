import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/widgets/buttons/outlined_button.dart';

class DealCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String svg;
  final Color color;
  const DealCard({ super.key, required this.title, required this.subtitle, required this.svg, required this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 8.w, right: 16.w),
      // height: 60.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
           
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Text(title, style: AppTypography.kLight16.copyWith(color: AppColors.kWhite),),
           SizedBox(height: 8.0.h,),
            Row(children: [
              SvgPicture.asset(svg),
              SizedBox(width: 5.w,),
             Text(subtitle, style: AppTypography.kExtraLight12.copyWith(color: AppColors.kWhite),)
            ],)
            
          ],),
           const CustomOutlinedButton(text: 'View All'),
        ],
      ),
    );
  }
}
