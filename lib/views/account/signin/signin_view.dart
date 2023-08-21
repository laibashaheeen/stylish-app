import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/account/forget/forget_view.dart';
import 'package:stylish/views/account/signin/components/custom_text_field.dart';
import 'package:stylish/views/account/signup/signup_view.dart';
import 'package:stylish/views/welcome_view.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
          body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 63.h, left: 32.w, right: 26.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome\nBack!', style: AppTypography.kBold36),
            SizedBox(
              height: 36.0.h,
            ),
            const CustomTextFormField(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPasswordView()),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: AppTypography.kLight12
                        .copyWith(color: AppColors.kPrimary),
                  )),
            ),
            SizedBox(height: 52.h),
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.kPrimary,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomeView()),
                          );
                  },
                  child: Text('Login',
                      style: AppTypography.kSemiBold20
                          .copyWith(color: AppColors.kWhite))),
            ),
            SizedBox(height: 75.h),
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
                      text: 'Create An Account',
                      style: AppTypography.kExtraLight14
                          .copyWith(color: AppColors.kGreyContinue),
                    ),
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: 'Sign Up',
                      style: AppTypography.kSemiBold14.copyWith(
                        color: AppColors.kPrimary,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpView()),
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
