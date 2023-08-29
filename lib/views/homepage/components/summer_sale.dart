import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/widgets/buttons/outlined_button.dart';

class SummerSale extends StatelessWidget {
  const SummerSale({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 270.h,
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
            padding:  EdgeInsets.only(left: 8.w, top: 8.h, right: 16.w, bottom: 16.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
              const CustomOutlinedButton(text: 'View all', isFilled: true),
            ],),
          )
        ],
      ),
    );
  }
}