import 'package:flutter/material.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const PrimaryButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kPrimary,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(text,
            style: AppTypography.kSemiBold20.copyWith(color: AppColors.kWhite)),
      ),
    );
  }
}
