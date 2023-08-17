import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';


class ForgetPasswordView extends StatelessWidget {
 ForgetPasswordView({super.key});
    final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Scaffold(
          
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top:63.h,left: 29.w,right: 29.w),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
               
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 1.0.h),
                 child: Text(
                   'Forgot password?',
                   style: AppTypography.kBold36
                 ),
               ),
                 SizedBox(
                  height: 32.0.h,
                ),
          
               TextFormField(
          controller: _emailController,
          obscureText: false,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide:
                  BorderSide(color: AppColors.kGreyBorder, width: 1.0.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide:
                  BorderSide(color: AppColors.kGreyBorder, width: 1.0.w),
            ),
            filled: true,
            fillColor: AppColors.kGreyFilled,
            hintText: 'Username or Email',
            hintStyle:
                AppTypography.kLight12.copyWith(color: AppColors.kGreyHint),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: SvgPicture.asset(
                AppAssets.kMail,
              ),
            ),
            prefixIconConstraints:
                BoxConstraints(minWidth: 24.w, minHeight: 24.w),
            errorStyle: const TextStyle(color: Colors.red),
          ),
        ),
               SizedBox(height: 26.h,),
                TextButton(
                    onPressed: () {},
                    child:  Text(
                      '* We will send you a message to set or reset \nyour new password',
                      style: AppTypography.kLight12.copyWith(color: AppColors.kGreyHint),
                    )),
               SizedBox(height: 26.h),
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                        color: AppColors.kPrimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                       child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Submit',
                        style: AppTypography.kSemiBold20.copyWith(color: AppColors.kWhite)
                      )),
                ),
                
              ],
            ),
          )),
    );
  }
}
