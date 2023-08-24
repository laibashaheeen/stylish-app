import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/auth/forget_view.dart';
import 'package:stylish/views/profile/components/textfield.dart';
import 'package:stylish/views/profile/components/textformfield.dart';
import 'package:stylish/views/widgets/buttons/primary_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.kBlack,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Checkout',
          style: AppTypography.kSemiBold18.copyWith(color: AppColors.kBlack),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.h),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 96.w,
                    height: 96.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.kBlue,
                        border:
                            Border.all(color: AppColors.kWhite, width: 3.w)),
                    child: Image.asset(
                      AppAssets.kProfileLarge,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kBlue,
                          border:
                              Border.all(color: AppColors.kWhite, width: 3.w)),
                      child: Icon(
                        Icons.edit_outlined,
                        color: AppColors.kWhite,
                        size: 14.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h,),
             Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Personal Details',
                          style: AppTypography.kSemiBold18
                              .copyWith(color: AppColors.kBlack),
                        )),
                        SizedBox(height: 20.h,),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    ProfileTextFormField(
                      controller: _emailController,
                      label: 'Email Address',
                    ),
                    SizedBox(height: 28.h),
                    ProfileTextFormField(
                      isPassword: true,
                      controller: _passwordController,
                      label: 'Password',
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPasswordView()),
                            );
                          },
                          child: Text(
                            'Change Password',
                            style: AppTypography.kLight12.copyWith(
                                color: AppColors.kPrimary,
                                decoration: TextDecoration.underline),
                          )),
                    ),
                    SizedBox(height: 24.h),
                    Divider(
                      thickness: 1,
                      color: AppColors.kGreyDivider,
                    ),
                    SizedBox(height: 34.h),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Business Address Details',
                          style: AppTypography.kSemiBold16
                              .copyWith(color: AppColors.kBlack),
                        )),
                    SizedBox(height: 28.h),
                    const ProfileTextField(
                      label: 'Address',
                    ),
                    SizedBox(height: 28.h),
                    const ProfileTextField(
                      isDropdown: true,
                      label: 'State',
                    ),
                    SizedBox(height: 28.h),
                    const ProfileTextField(
                      label: 'Country',
                    ),
                    SizedBox(height: 34.h),
                    Divider(
                      thickness: 1,
                      color: AppColors.kGreyDivider,
                    ),
                    SizedBox(height: 32.h),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Bank Account Details',
                          style: AppTypography.kSemiBold16
                              .copyWith(color: AppColors.kBlack),
                        )),
                    SizedBox(height: 24.h),
                    const ProfileTextField(
                      label: 'Bank Account Number',
                    ),
                    SizedBox(height: 28.h),
                    const ProfileTextField(
                      label: 'Account Holder’s Name',
                    ),
                    SizedBox(height: 28.h),
                    const ProfileTextField(
                      label: 'IFSC Code',
                    ),
                    SizedBox(height: 34.h),
                    PrimaryButton(
                        onTap: () {
                          {
                            if (_formKey.currentState!.validate()) {}
                          }
                        },
                        text: 'Save'),
                    SizedBox(height: 57.h),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
