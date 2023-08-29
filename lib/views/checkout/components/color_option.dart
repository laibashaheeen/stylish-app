
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/checkout_model.dart';

class ColorOption extends StatelessWidget {
  final String text;
  const ColorOption({
    super.key,
    required this.checkoutItem, required this.text,
  });

  final CheckoutModel checkoutItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: AppColors.kGreyDivider),
          borderRadius: BorderRadius.circular(2.r)),
      child: Text(
        text,
        style: AppTypography.kLight10
            .copyWith(color: AppColors.kBlack),
      ),
    );
  }
}
