import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8.h),
                        width: 100.w,
                        height: 35.h,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          border: Border.all(
                            color:  AppColors.kWhite,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Shop Now',
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
              ),
            );
  }
}