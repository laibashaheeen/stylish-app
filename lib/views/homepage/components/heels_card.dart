import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/widgets/buttons/outlined_button.dart';

class HeelCard extends StatelessWidget {
  const HeelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 172.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.kWhite, borderRadius: BorderRadius.circular(4.r)),
            
      ),
      
      Container(
      width: 331.w,
      height: 155.h,
      margin: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 8.w, right: 4.w),
      decoration: BoxDecoration(
        color: AppColors.kWhiteBody,
        borderRadius: BorderRadius.circular(4.r),
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppAssets.kDots),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35.0.h, right: 29.w),
                child: Text(
                  'Flat and Heels',
                  style: AppTypography.kLight16.copyWith(color: AppColors.kBlack),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 13.0.w),
                child: Text(
                  'Stand a chance to get rewarded',
                  style: AppTypography.kExtraLight10
                      .copyWith(color: AppColors.kBlack),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.0.w),
                child: const CustomOutlinedButton(text: 'Visit Now', isFilled: true),
              )
            ],
          ),
        ],
      ),
        ),
        Container(
              height: 171.h,
              width: 11.w,
             
              decoration: const BoxDecoration(
                 gradient: LinearGradient(
                colors: [
                  Color(0xFFEFAD18),
                  Color(0xFFF8D7B4),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              ),
             
            ),
        Positioned(
      top: 30,
      left: 10,
      child: Image.asset(AppAssets.kShoes)),
    ]);
  }
}
