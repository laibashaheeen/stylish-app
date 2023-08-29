import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/widgets/buttons/outlined_button.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 343.w,
              
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      AppAssets.kBanner,
                    ),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 14.0.h, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '50-40% OFF',
                      style: AppTypography.kBold20
                          .copyWith(color: AppColors.kWhite),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Now in (product) \nAll colours',
                      style: AppTypography.kExtraLight12
                          .copyWith(color: AppColors.kWhite),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 100.w,
                      
                      child: const CustomOutlinedButton( text: 'Shop Now')),
                  ],
                ),
              ),
            );
  }
}