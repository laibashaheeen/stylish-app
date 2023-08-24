import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class SummerSale extends StatelessWidget {
  const SummerSale({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(8.r)
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200.h,
            child: Image.asset(AppAssets.kSummerSale,
            
            fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Arrivals', style: AppTypography.kLight20.copyWith(color: AppColors.kBlack),),
                  Text('Summer’ 25 Collections', style: AppTypography.kExtraLight16.copyWith(color: AppColors.kBlack))
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                 
                  margin: EdgeInsets.only(right: 4.0.w, top: 18.h),
                  padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
                  width: 89.w,
                  height: 28.h,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimary,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'View all',
                        style: AppTypography.kSemiBold12
                            .copyWith(color: AppColors.kWhite),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      SvgPicture.asset(AppAssets.kForwardArrow),
                    ],
                  ),
                ),
              ),
            ],),
          )
        ],
      ),
    );
  }
}