import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

import '../../data/app_assets.dart';

class FilterRow extends StatelessWidget {
final String text;
  const FilterRow({ super.key, required this.text });

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: AppTypography.kSemiBold18
                        .copyWith(color: AppColors.kBlack),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: AppColors.kWhite),
                        child: Row(
                          children: [
                            Text('Sort',
                                style: AppTypography.kExtraLight12
                                    .copyWith(color: AppColors.kBlack)),
                            SvgPicture.asset(AppAssets.kSort),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: AppColors.kWhite),
                        child: Row(
                          children: [
                            Text('Filter',
                                style: AppTypography.kExtraLight12
                                    .copyWith(color: AppColors.kBlack)),
                            SvgPicture.asset(AppAssets.kFilter),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
  }
}
