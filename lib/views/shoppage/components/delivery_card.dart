import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class DealCard extends StatelessWidget {
  
  const DealCard({ super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      height: 60.h,
      decoration: BoxDecoration(
        color: AppColors.kPinkDelivery,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: RichText(
                  text: TextSpan(
                    style: const TextStyle(),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Delivery in',
                        style: AppTypography.kSemiBold14
                            .copyWith(color: AppColors.kBlack),
                      ),
                      TextSpan(
                        text: '1 within Hour',
                        style: AppTypography.kSemiBold20
                            .copyWith(color: AppColors.kBlack),
                      ),
                    ],
                  ),
                ),
    );
  }
}