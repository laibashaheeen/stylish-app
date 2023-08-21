import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: TextField(
        
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: AppColors.kWhite,
          hintText: 'Search any Product..',
          hintStyle: AppTypography.kExtraLight14.copyWith(color: AppColors.kGreySearch),
          prefixIcon: SvgPicture.asset(AppAssets.kSearchBar),
          prefixIconConstraints:
                BoxConstraints(minWidth: 20.w, minHeight: 20.h),
          suffixIcon: SvgPicture.asset(AppAssets.kMicrophone,),
           suffixIconConstraints:
                BoxConstraints(minWidth: 24.w, minHeight: 24.h),
          
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide.none),
          disabledBorder: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
