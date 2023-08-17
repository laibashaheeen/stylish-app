import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/onboarding_model.dart';

class OnboardingCard extends StatelessWidget {
  final OnboardingModel onboarding;
  const OnboardingCard({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(onboarding.image),
        SizedBox(height: 15.h),
        Text(
          onboarding.title,
          style: AppTypography.kExtraBold24,
        ),
        SizedBox(height: 10.h),
        Text(
          onboarding.description,
          style: AppTypography.kSemiBold14.copyWith(color: AppColors.kGrey),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
