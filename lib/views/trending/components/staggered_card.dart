import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/staggered_model.dart';
import 'package:stylish/views/widgets/rating_star.dart';

class StaggeredCard extends StatelessWidget {
  final StaggeredModel item;
  
  const StaggeredCard({super.key, required this.item,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.w,
      // height: 241.h,
     decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 0,
                      offset: const Offset(0, 2),
                    ),
                  ]
                  ),
                  
      child: Column(
        children: [
          Image.asset(
            item.image,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.all(8.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  item.title,
                  style:
                      AppTypography.kLight12.copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  item.description,
                  style: AppTypography.kExtraLight10
                    ..copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  item.price,
                  style: AppTypography.kLight12
                    ..copyWith(color: AppColors.kBlack),
                ),
               
                
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    const RatingStar(),
                    SizedBox(width: 5.w),
                    Text(
                      item.rating,
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
