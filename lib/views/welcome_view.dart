import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/landingpage/landing_page.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AppAssets.kWelcome,
              ),
            )),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
             child: Column(
            
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 14.0.h),
                  child: Text(
                    'You want \nAuthentic, here \nyou go!',
                    style: AppTypography.kSemiBold34
                        .copyWith(color: AppColors.kWhite),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 44.0.h),
                  child: Text(
                    'Find it here, buy it now!',
                    style: AppTypography.kExtraLight14
                        .copyWith(color: AppColors.kGreyWelcome),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 34.h),
                  height: 55,
                  width: 270.w,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimary,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => const LandingPage(),));
                      },
                      child: Text('Get Started',
                          style: AppTypography.kSemiBold20
                              .copyWith(color: AppColors.kWhite))),
                ),
              ],
            ),
          ),
         
        
        ],
      ),
    );
  }
}
