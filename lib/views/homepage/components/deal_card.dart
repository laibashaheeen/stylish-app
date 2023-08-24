import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class DealCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String svg;
  final Color color;
  const DealCard({ super.key, required this.title, required this.subtitle, required this.svg, required this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      height: 60.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Text(title, style: AppTypography.kLight16.copyWith(color: AppColors.kWhite),),
            Row(children: [
              SvgPicture.asset(svg),
              SizedBox(width: 5.w,),
             Text(subtitle, style: AppTypography.kExtraLight12.copyWith(color: AppColors.kWhite),)
            ],)
            
          ],),
           InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal:10.w, vertical: 6.h),
                        width: 90.w,
                        height: 28.h,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'View all',
                              style: AppTypography.kSemiBold12
                                  .copyWith(color: AppColors.kWhite),
                            ),
                            SizedBox(width: 4.w,),
                            SvgPicture.asset(AppAssets.kForwardArrow),
                          ],
                        ),
                      ),
                    ),
        ],
      ),
    );
  }
}