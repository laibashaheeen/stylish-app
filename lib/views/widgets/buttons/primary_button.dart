import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isSmall;
  final bool isLarge;
  const PrimaryButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.isSmall = false,
      this.isLarge = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: isSmall
            ? 48.h
            : isLarge
                ? 59.h
                : 55.h,
        width: isSmall ? 219.w : double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kPrimary,
          borderRadius:
              isLarge ? BorderRadius.circular(8.r) : BorderRadius.circular(4.r),
        ),
        child: Text(text,
            style: isSmall
                ? AppTypography.kSemiBold20.copyWith(
                    color: AppColors.kWhite,
                    fontSize: 17,
                    fontWeight: FontWeight.w100)
                : isLarge
                    ? AppTypography.kBold20.copyWith(
                        color: AppColors.kWhite,
                        fontSize: 22,
                      )
                    : AppTypography.kSemiBold20
                        .copyWith(color: AppColors.kWhite)),
      ),
    );
  }
}
