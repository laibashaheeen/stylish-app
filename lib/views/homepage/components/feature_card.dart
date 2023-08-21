import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/feature_model.dart';

class FeatureCard extends StatelessWidget {
  final FeatureModel featureItem;
  const FeatureCard({ super.key, required this.featureItem });

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Container(
                  child:   Image.asset(featureItem.image),
                ),
              
                SizedBox(height: 4.h,),
              Text(featureItem.title,style: AppTypography.kExtraLight12.copyWith(color: AppColors.kBlack))
              ],
            );
  }
}