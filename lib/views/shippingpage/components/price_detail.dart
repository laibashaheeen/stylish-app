
import 'package:flutter/material.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class PriceDetail extends StatelessWidget {
  final String text;
  final String price;
  final bool isTotal;
  const PriceDetail({
    super.key, required this.text, required this.price, this.isTotal = false
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
      text,
      style: isTotal? AppTypography.kLight18.copyWith(color: AppColors.kGreyText) : AppTypography.kLight18.copyWith(color: AppColors.kGrey)
          ),
          Text(
    price,
    style: isTotal? AppTypography.kLight16.copyWith(color: AppColors.kGreyText) : AppTypography.kLight16.copyWith(color: AppColors.kGrey)
        )
      ],
    );
  }
}
