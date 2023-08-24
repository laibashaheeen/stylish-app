import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

    bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _emailController,
          obscureText: false,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide:
                  BorderSide(color: AppColors.kGrey, width: 1.0.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide:
                  BorderSide(color: AppColors.kGrey, width: 1.0.w),
            ),
            filled: true,
            fillColor: AppColors.kGreyFilled,
            hintText: 'Username or Email',
            hintStyle:
                AppTypography.kLight12.copyWith(color: AppColors.kGreyHint),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: SvgPicture.asset(
                AppAssets.kUser,
              ),
            ),
            prefixIconConstraints:
                BoxConstraints(minWidth: 24.w, minHeight: 24.h),
            
          ),
        ),
        SizedBox(
          height: 31.h,
        ),
        TextFormField(
          controller: _passwordController,
           obscureText: _obscurePassword,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide:
                  BorderSide(color: AppColors.kGrey, width: 1.0.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide:
                  BorderSide(color: AppColors.kGrey, width: 1.0.w),
            ),
           filled: true,
            fillColor: AppColors.kGreyFilled,
            hintText: 'Password',
            hintStyle:
                AppTypography.kLight12.copyWith(color: AppColors.kGreyHint),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: SvgPicture.asset(
                AppAssets.kLock,
              ),
            ),
            prefixIconConstraints:
                BoxConstraints(minWidth: 24.w, minHeight: 24.w),
            suffixIcon: GestureDetector(
          onTap: _togglePasswordVisibility, 
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: SvgPicture.asset(
              _obscurePassword ? AppAssets.kEyeOff : AppAssets.kEye, 
              color: AppColors.kGreySvg,
            ),
          ),
        ),
            suffixIconConstraints:
                BoxConstraints(minWidth: 24.w, minHeight: 24.w),
            
          ),
        ),
      ],
    );
  }
}
