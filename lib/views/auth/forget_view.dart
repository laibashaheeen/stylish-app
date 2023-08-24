import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/auth/components/auth_field.dart';
import 'package:stylish/views/widgets/buttons/primary_button.dart';


class ForgetPasswordView extends StatelessWidget {
 ForgetPasswordView({super.key});
    final TextEditingController _emailController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
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
          Form(
            key: _formKey,
            child: AuthField(
                  controller: _emailController,
                  hintText: 'Username or Email',
                  icon: AppAssets.kMail,),
          ),
               
               SizedBox(height: 26.h,),
                Text(
                  '* We will send you a message to set or reset \nyour new password',
                  style: AppTypography.kLight12.copyWith(color: AppColors.kGreyHint),
                ),
               SizedBox(height: 26.h),
               PrimaryButton(onTap: () {if (_formKey.currentState!.validate()) {}}, text: 'Submit')
                
              ],
            ),
          )),
    );
  }
}



