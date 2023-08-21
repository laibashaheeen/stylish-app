import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class AuthField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String hintText;
  final String icon;
  const AuthField(
      {super.key,
      required this.controller,
      this.isPassword = false,
      required this.hintText,
      required this.icon});

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? isObscure : false,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.r),
            borderSide: BorderSide(color: AppColors.kGreyBorder, width: 1.0.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.r),
            borderSide: BorderSide(color: AppColors.kGreyBorder, width: 1.0.w),
          ),
          filled: true,
          fillColor: AppColors.kGreyFilled,
          hintText: widget.hintText,
          hintStyle:
              AppTypography.kLight12.copyWith(color: AppColors.kGreyHint),
          prefixIcon: Padding(
            padding: EdgeInsets.all(12.h),
            child: SvgPicture.asset(
              widget.icon,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    isObscure = !isObscure;
                  },
                  icon: SvgPicture.asset(
                    isObscure ? AppAssets.kEyeOff : AppAssets.kEye,
                  ))
              : null),
    );
  }
}
