import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 8.w),
      height: 84.h,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(children: [
          Image.asset(AppAssets.kOffer),
          SizedBox(width: 24.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Text('Special Offers', style: AppTypography.kLight16.copyWith(color: AppColors.kBlack),),
                SizedBox(width: 8.h,),
                Image.asset(AppAssets.kEmoji)
              ],
            ),
            Text('We make sure you get the \noffer you need at best prices', style: AppTypography.kExtraLight12,)
          ],)
      ],)
    );
  }
}