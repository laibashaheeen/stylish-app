import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class SponsorCard extends StatelessWidget {
  const SponsorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sponserd',
            style: AppTypography.kLight20.copyWith(color: AppColors.kBlack),
          ),
          SizedBox(height: 12.h,),
          Image.asset(AppAssets.kSponsorImage, fit: BoxFit.fill,),
          SizedBox(height: 12.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'up to 50% Off',
                style: AppTypography.kBold16.copyWith(color: AppColors.kBlack),
              ),
               
              SvgPicture.asset(AppAssets.kIosForward)
            ],
          )
        ],
      ),
    );
  }
}
