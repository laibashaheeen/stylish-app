import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class CustomContainer extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomContainer({
    
    super.key, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight,
      children: [
      Container(
        padding: EdgeInsets.only(left: 6.w, right: 23.w,top: 4.h, bottom: 4.h),
        width: 86.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: AppColors.kGreyWelcome),
        child: RichText(
          text: TextSpan(
            style: const TextStyle(),
            children: <TextSpan>[
              TextSpan(
                text: text1,
                style: AppTypography.kExtraLight14
                    .copyWith(color: AppColors.kBlack),
              ),
              
              TextSpan(
                text: text2,
                style: AppTypography.kLight14
                    .copyWith(color: AppColors.kBlack),
              ),
            ],
          ),
        ),
      ),
      Icon(Icons.keyboard_arrow_down, color: AppColors.kBlack, size: 18,)
    ],
      
    );
  }
}