import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/wrap_model.dart';

class WrapCard extends StatelessWidget {
  final WrapModel wrapItem;
  const WrapCard( { super.key, required this.wrapItem });

  @override
  Widget build(BuildContext context, ) {
    return InkWell(
      onTap: () {},
      child: Container(

        padding: EdgeInsets.all(4.h),
        decoration: BoxDecoration(
           color: AppColors.kWhiteBody,
          border: Border.all(color: AppColors.kGreyWrap, width: 1.w),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Row(
          children: [
            SvgPicture.asset(wrapItem.image),
           
             SizedBox(width: 4.w,),
            Text(
              wrapItem.text,
              style: AppTypography.kLight10.copyWith(color: AppColors.kGreyWrap)
            ),
          ],
        ),
      ),
    );
  }
}