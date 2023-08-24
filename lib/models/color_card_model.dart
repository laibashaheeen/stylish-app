import 'package:flutter/material.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';

class ColorCardModel {
  String image;
  String title;
  Color startColor;
  Color endColor;
  
  ColorCardModel({required this.title, required this.image, required this.startColor, required this.endColor,});
}

List<ColorCardModel> colorCardItem = [
  ColorCardModel(title: 'Go to cart', image: AppAssets.kCartAppbar, startColor: AppColors.kBlueStart, endColor: AppColors.kBlueEnd),
  ColorCardModel(title: 'Buy Now', image: AppAssets.kFingerPointer, startColor: AppColors.kGreenStart, endColor: AppColors.kGreenEnd),
  
  
];