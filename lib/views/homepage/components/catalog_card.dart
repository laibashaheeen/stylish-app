import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/catelog_model.dart';
import 'package:stylish/views/widgets/rating_star.dart';

class CatalogCard extends StatelessWidget {
  final CatalogModel catalogItem;
  const CatalogCard({super.key, required this.catalogItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: 241.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.r)),
      child: Column(
        children: [
          Image.asset(
            catalogItem.image,
            width: 241.w,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsets.all(4.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  catalogItem.title,
                  style:
                      AppTypography.kLight12.copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  catalogItem.description,
                  style: AppTypography.kExtraLight10
                    ..copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  catalogItem.price,
                  style: AppTypography.kLight12
                    ..copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    Text(
                      catalogItem.originalPrice,
                      style: AppTypography.kExtraLight10.copyWith(
                          color: AppColors.kGrey,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      catalogItem.sale,
                      style: AppTypography.kExtraLight10
                          .copyWith(color: AppColors.kPrimary),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),

                Row(
                  children: [
                    const RatingStar(),
                    SizedBox(width: 5.w),
                    Text(
                      catalogItem.rating,
                      style: AppTypography.kExtraLight10
                          .copyWith(color: AppColors.kGrey),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
