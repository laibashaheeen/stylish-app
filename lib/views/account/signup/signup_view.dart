import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/account/signin/signin_view.dart';
import 'package:stylish/views/account/signup/components/custom_form.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
          body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 63.h, left: 29.w, right: 29.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create an \naccount', style: AppTypography.kBold36),
            SizedBox(
              height: 33.0.h,
            ),
            CustomForm(),
            SizedBox(height: 19.h,),
            Padding(
              padding: EdgeInsets.only(left: 3.0.w),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'By clicking the ',
                      style: AppTypography.kExtraLight12
                          .copyWith(color: AppColors.kGreyHint),
                    ),
                    TextSpan(
                      text: 'Register ',
                      style: AppTypography.kExtraLight12.copyWith(
                        color: AppColors.kPrimary,
                        
                      ),
                      
                    ),
                    TextSpan(
                      text: 'button, you agree \nto the public offer',
                      style: AppTypography.kExtraLight12
                          .copyWith(color: AppColors.kGreyContinue),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 38.h),
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.kPrimary,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text('Create Account',
                      style: AppTypography.kSemiBold20
                          .copyWith(color: AppColors.kWhite))),
            ),
            SizedBox(height: 40.h),
            Center(
              child: Text('- OR Continue with -',
                  style: AppTypography.kLight12
                      .copyWith(color: AppColors.kGreyContinue)),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(AppAssets.kGoogle)),
                SizedBox(
                  width: 10.w,
                ),
                Image(image: AssetImage(AppAssets.kApple)),
                SizedBox(
                  width: 10.w,
                ),
                Image(image: AssetImage(AppAssets.kFacebook)),
              ],
            ),
            SizedBox(height: 30.h),
            Center(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'I Already Have an Account',
                      style: AppTypography.kExtraLight14
                          .copyWith(color: AppColors.kGreyContinue),
                    ),
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: 'Login',
                      style: AppTypography.kSemiBold14.copyWith(
                        color: AppColors.kPrimary,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                               Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const SigninView()),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
