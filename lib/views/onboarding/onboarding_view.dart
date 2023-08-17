import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/onboarding_model.dart';
import 'package:stylish/views/onboarding/components/onboarding_card.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int _currentIndex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: RichText(
            text: TextSpan(
              style: const TextStyle(),
              children: <TextSpan>[
                TextSpan(
                  text: '${_currentIndex + 1}',
                  style: AppTypography.kSemiBold18
                      .copyWith(color: AppColors.kBlack),
                ),
                TextSpan(
                  text: '/3',
                  style: AppTypography.kSemiBold18
                      .copyWith(color: AppColors.kGrey1),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style:
                    AppTypography.kSemiBold18.copyWith(color: AppColors.kBlack),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                itemCount: onboardingList.length,
                itemBuilder: (context, index) =>
                    OnboardingCard(onboarding: onboardingList[index]),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: _currentIndex == 0 ? null : () {},
                    child: Text(
                      _currentIndex == 0 ? '' : 'Prev',
                      style: AppTypography.kSemiBold14
                          .copyWith(color: AppColors.kGrey),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: onboardingList.length,
                    effect: ExpandingDotsEffect(
                        dotHeight: 10.h,
                        dotWidth: 10.w,
                        radius: 100.r,
                        activeDotColor: AppColors.kBlack),
                  ),
                  TextButton(
                    onPressed: _currentIndex == 2
                        ? () {
                            // Navigate to Next page
                          }
                        : () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                    child: Text(
                      _currentIndex == 2 ? "Get Started" : 'Next',
                      style: AppTypography.kSemiBold18
                          .copyWith(color: AppColors.kPrimary),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
