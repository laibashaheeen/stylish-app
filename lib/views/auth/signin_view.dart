import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/auth/components/auth_field.dart';
import 'package:stylish/views/auth/forget_view.dart';
import 'package:stylish/views/auth/signup_view.dart';
import 'package:stylish/views/welcome/welcome_view.dart';
import 'package:stylish/views/widgets/buttons/primary_button.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
          body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 63.h, left: 26.w, right: 26.w),
        // padding must be same
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome\nBack!', style: AppTypography.kBold36),
            SizedBox(height: 36.0.h),
            AuthField(
                controller: _emailController,
                hintText: 'Username or email',
                icon: AppAssets.kUser),
            SizedBox(height: 30.h),
            AuthField(
                controller: _passwordController,
                isPassword: true,
                hintText: 'Enter Password',
                icon: AppAssets.kLock),
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
          PrimaryButton(onTap: () {}, text: 'LOGIn'),
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
